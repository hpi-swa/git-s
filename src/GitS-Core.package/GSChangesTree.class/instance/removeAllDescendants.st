removing
removeAllDescendants
	self children valuesDo: [:segmentChildren |
		segmentChildren
			do: [:each | each isTree ifTrue: [each removeAllDescendants]];
			removeAllSuchThat: [:each | each isTree not]].