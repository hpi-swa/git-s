updating
allChildrenChanged: aSymbol
	(self allChildren gather: #dependents) asSet do: [:each | each update: aSymbol].