instance creation
withMapper: aMapper from: aSnapshot operations: aCollection
	^ (self withMapper: aMapper)
		from: aSnapshot;
		addOperations: aCollection;
		yourself