removing
removeAllEmptyTrees
	self children valuesDo: [:children |
		children
			do: [:each | each isTree ifTrue: [each removeAllEmptyTrees]];
			removeAllSuchThat: [:each | each isTree and: [each isEmpty]]].