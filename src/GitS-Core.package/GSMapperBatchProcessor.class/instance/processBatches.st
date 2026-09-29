processing
processBatches
	GSMapper allSubclassesDo: [:subclass | self processSubclass: subclass].