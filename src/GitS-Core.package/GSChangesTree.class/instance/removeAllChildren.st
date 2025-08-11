removing
removeAllChildren
	self children valuesDo: [:children |
		children
			do: [:each | each isTree ifTrue: [each removeAllChildren]];
			removeAllSuchThat: [:each | each isTree not]].