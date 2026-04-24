compatibility
canChangeTo: aRebaseCommandClass
	^ (self wantsToChangeTo: aRebaseCommandClass) and: [aRebaseCommandClass wantsToBeCreatedFrom: self]