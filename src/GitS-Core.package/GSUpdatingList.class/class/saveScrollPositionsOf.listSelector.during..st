scrolling
saveScrollPositionsOf: anObject listSelector: aSymbol during: aBlock
	| savedScrollPositions |
	savedScrollPositions := IdentityDictionary new.
	(self actualDependentsOf: anObject) do: [:each |
		((each isKindOf: PluggableMultiColumnListMorph) and: [each getListSelector = aSymbol]) ifTrue: [
			savedScrollPositions at: each put: each hScrollBar value @ each vScrollBar value]].
	^ aBlock ensure: [
		savedScrollPositions keysAndValuesDo: [:list :offset |
			list hScrollBar setValue: offset x.
			list vScrollBar setValue: offset y.
			self forceFullShrinkWrapLayoutingFor: list]]