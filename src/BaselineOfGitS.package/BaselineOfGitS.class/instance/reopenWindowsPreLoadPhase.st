migrations
reopenWindowsPreLoadPhase
	<preLoadMigrationAlways: 2>
	| openedWindows reopenWindowBlocks |
	reopenWindowBlocks := Smalltalk at: #GitSReopenWindowBlocks ifAbsentPut: [SortedCollection new].
	openedWindows := SystemWindow
		windowsIn: Project current world
		satisfying: [:each | each model class packageInfo name beginsWith: 'GitS-'].
	openedWindows do: [:oldWindow | | block index model |
		index := oldWindow getIndexInOwner.
		model := oldWindow model.
		(#(GSOperationStarter GSOperationLifecycle) includes: model class name) ifTrue: [model := model driver].
		"separated into a method to prevent the closure from holding onto oldWindow"
		block := self
			createReopenWindowBlockForModel: model
			index: index
			bounds: oldWindow bounds.
		reopenWindowBlocks add: index -> block].
	openedWindows do: [:each |
		each
			model: nil; "prevent call of okToClose"
			delete].