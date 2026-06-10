accessing
visibleSortedDescendantsDo: aBlock
	self sortedDescendantsDo:
		(self allExcluded
			ifTrue: [aBlock]
			ifFalse: [[:each | each isIncluded ifTrue: [aBlock value: each]]]).