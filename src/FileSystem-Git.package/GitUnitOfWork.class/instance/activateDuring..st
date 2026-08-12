scope activation
activateDuring: aBlock
	^ GitCurrentUnitOfWork
		value: self
		for: repository
		during: [self publishObjectCacheAfter: aBlock]