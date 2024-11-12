testing
isIncludedRemoval
	^ (self changes allSatisfy: #isIncluded) and: [self isRemoval]