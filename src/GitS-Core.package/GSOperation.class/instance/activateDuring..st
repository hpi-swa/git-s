activating
activateDuring: aBlock
	^ self becomeActiveDuring: [self withUnitOfWork: [self ignoreCancelationDuring: aBlock]]