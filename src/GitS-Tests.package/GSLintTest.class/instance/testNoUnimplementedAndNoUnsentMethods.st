tests
testNoUnimplementedAndNoUnsentMethods
	| found |
	found := self findUnimplementedAndUnsentMethods.
	self
		assert: (found at: 'unimplemented') isEmpty
		description: 'Found unimplemented selectors or references to non-existing globals'.
	self
		assert: (found at: 'unsent') asIdentitySet = self expectedUnsentMethods asIdentitySet
		description: 'Found unsent methods'.