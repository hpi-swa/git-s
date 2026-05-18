loading
loadContents
	^ (self withUnitOfWork: [self unitOfWork objectNamed: self hexHash]) bytes