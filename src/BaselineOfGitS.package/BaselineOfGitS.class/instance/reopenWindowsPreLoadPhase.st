migrations
reopenWindowsPreLoadPhase
	<preLoadMigrationAlways: 2>
	| openedWindows reopenWindowBlocks |
	reopenWindowBlocks := Smalltalk at: #GitSReopenWindowBlocks ifAbsentPut: [SortedCollection new].
	openedWindows := SystemWindow
		windowsIn: Project current world
		satisfying: [:each | each model class packageInfo name beginsWith: 'GitS-'].
	"avoid holding strong references, see below"
	openedWindows := openedWindows collect: [:each | WeakArray with: each].
	openedWindows do: [:each | | oldWindow block bounds index model |
		oldWindow := each first.
		index := oldWindow getIndexInOwner.
		bounds := oldWindow bounds.
		model := oldWindow model.
		(#(GSOperationStarter GSOperationLifecycle) includes: model class name) ifTrue: [model := model driver].
		oldWindow := nil. "avoid holding a strong reference in block's outerContext"
		block := [ | newWindow |
			newWindow := self preventOpeningToolsAttachedToMouseCursorDuring: [model open].
			newWindow setIndexInOwner: index.
			newWindow bounds: bounds].
		reopenWindowBlocks add: index -> block].
	openedWindows do: [:each |
		each first
			model: nil; "prevent call of okToClose"
			delete].