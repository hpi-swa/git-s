accessing
visibleRecursiveChildrenDo: aBlock
	self recursiveChildrenDo:
		(self allExcluded
			ifTrue: [aBlock]
			ifFalse: [[:each | each isIncluded ifTrue: [aBlock value: each]]]).