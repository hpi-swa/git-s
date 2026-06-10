accessing
visibleDescendentsDo: aBlock
	self descendentsDo:
		(self allExcluded
			ifTrue: [aBlock]
			ifFalse: [[:each | each isIncluded ifTrue: [aBlock value: each]]]).