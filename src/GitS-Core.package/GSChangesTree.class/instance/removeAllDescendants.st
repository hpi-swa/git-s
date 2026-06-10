removing
removeAllDescendants
	self children valuesDo: [:children |
		children
			do: [:each | each isTree ifTrue: [each removeAllDescendants]];
			removeAllSuchThat: [:each | each isTree not]].