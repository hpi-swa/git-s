commit-list
commitListChangedSaveScrollPositions: aBoolean
	| savedScrollPositions |
	savedScrollPositions := IdentityDictionary new.
	aBoolean ifTrue: [
		self actualDependents do: [:each |
			((each isKindOf: PluggableTreeMorph) and: [each getRootsSelector = #commitList]) ifTrue: [
				savedScrollPositions at: each put: each hScrollBar value @ each vScrollBar value]]].
	self changed: #commitList.
	savedScrollPositions keysAndValuesDo: [:tree :offset |
		tree hScrollBar setValue: offset x.
		tree vScrollBar setValue: offset y].