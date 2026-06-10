accessing
visibleDescendantsDo: aBlock
	self descendantsDo:
		(self allExcluded
			ifTrue: [aBlock]
			ifFalse: [[:each | each isIncluded ifTrue: [aBlock value: each]]]).