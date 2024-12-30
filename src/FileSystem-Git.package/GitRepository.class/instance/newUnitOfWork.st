public-accessing
newUnitOfWork
	^ GitUnitOfWork new
		repository: self;
		initializeStores;
		yourself