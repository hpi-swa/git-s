command-changing
changeCommandTo: aRebaseCommandClass
	self assert: (self class canChangeTo: aRebaseCommandClass).
	^ aRebaseCommandClass new
		copyFrom: self;
		requestMissingInstVars;
		yourself