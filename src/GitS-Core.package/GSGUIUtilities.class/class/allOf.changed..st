dependents
allOf: aCollection changed: anObject
	(aCollection gather: #dependents) asSet do: [:each | each update: anObject].