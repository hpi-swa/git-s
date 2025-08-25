enumerating
allEntriesDo: aBlock
	self entries valuesDo: [:each | each allEntriesDo: aBlock].