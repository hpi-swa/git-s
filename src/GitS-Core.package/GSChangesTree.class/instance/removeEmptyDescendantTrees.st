removing
removeEmptyDescendantTrees
	self children valuesDo: [:children |
		children
			do: [:each | each isTree ifTrue: [each removeEmptyDescendantTrees]];
			removeAllSuchThat: [:each | each isTree and: [each isEmpty]]].