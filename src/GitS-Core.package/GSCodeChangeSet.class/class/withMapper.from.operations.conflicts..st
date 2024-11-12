instance creation
withMapper: aMapper from: aSnapshot operations: aCollection conflicts: anotherCollection
	^ (self withMapper: aMapper from: aSnapshot operations: aCollection)
		addConflicts: anotherCollection;
		yourself