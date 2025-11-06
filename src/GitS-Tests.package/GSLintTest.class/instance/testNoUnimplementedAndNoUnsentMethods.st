tests
testNoUnimplementedAndNoUnsentMethods
	| found unimplemented unsent expectedUnsent unexpectedUnsent unexpectedSent |
	found := self findUnimplementedAndUnsentMethods.
	unimplemented := found at: 'unimplemented'.
	unsent := (found at: 'unsent') asIdentitySet.
	expectedUnsent := self expectedUnsentMethods asIdentitySet.
	unexpectedUnsent := unsent difference: expectedUnsent.
	unexpectedSent := expectedUnsent difference: unsent.
	self
		assert: unimplemented isEmpty
		description: ('Found unimplemented selectors or references to non-existing globals: {1}' format: {unimplemented}).
	self
		assert: unexpectedUnsent isEmpty
		description: ('Found unsent methods: {1}' format: {unexpectedUnsent}).
	self
		assert: unexpectedSent isEmpty
		description: ('Found sent methods which were expected to be unsent: {1}' format: {unexpectedSent}).