tests
testNoUnimplementedAndNoUnsentMethods
	| found unimplemented unsent expectedUnsent unexpectedUnsent |
	found := self findUnimplementedAndUnsentMethods.
	unimplemented := found at: 'unimplemented'.
	unsent := (found at: 'unsent') asIdentitySet.
	expectedUnsent := self expectedUnsentMethods asIdentitySet.
	unexpectedUnsent := unsent difference: expectedUnsent.
	self
		assert: unimplemented isEmpty
		description: ('Found unimplemented selectors or references to non-existing globals: {1}' format: {unimplemented}).
	self
		assert: unexpectedUnsent isEmpty
		description: ('Found unsent methods: {1}' format: {unexpectedUnsent}).