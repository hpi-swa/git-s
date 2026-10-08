removing
removeEmptyDescendantTrees
	self children valuesDo: [:segmentChildren |
		segmentChildren
			do: [:each | each isTree ifTrue: [each removeEmptyDescendantTrees]];
			removeAllSuchThat: [:each | each isTree and: [each childrenAreEmpty]]].