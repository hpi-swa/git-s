generating
commitsChangedSaveScrollPositions: aBoolean
	| savedScrollPositions |
	savedScrollPositions := IdentityDictionary new.
	aBoolean ifTrue: [
		self actualDependents do: [:each |
			((each isKindOf: PluggableMultiColumnListMorph) and: [each getListSelector = #commitColumns]) ifTrue: [
				savedScrollPositions at: each put: each hScrollBar value @ each vScrollBar value]]].
	self
		changed: #commitColumns;
		changed: #activeCommitIndex.
	savedScrollPositions keysAndValuesDo: [:list :offset |
		list hScrollBar setValue: offset x.
		list vScrollBar setValue: offset y.
		self forceFullShrinkWrapLayoutingFor: list].