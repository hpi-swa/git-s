buttons
addButton: aBlock at: locationSymbol
	(self buttonBuilders at: locationSymbol ifAbsentPut: [OrderedCollection new])
		add: aBlock.