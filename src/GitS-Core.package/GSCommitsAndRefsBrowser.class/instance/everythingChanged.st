updating
everythingChanged
	self
		changed: #workingCopy;
		initializeRefTree;
		activeRef: (self workingCopyOrNil ifNotNil: [:workingCopy |
			workingCopy repositoryExists
				ifTrue: [workingCopy currentBranchOrHead]
				ifFalse: [nil]])
		forceChange: true.