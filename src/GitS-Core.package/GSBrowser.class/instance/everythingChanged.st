updating
everythingChanged
	self
		changed: #activeWorkingCopy;
		initializeRefTree;
		activeRef: (self activeWorkingCopy ifNotNil: [:workingCopy |
			workingCopy repositoryExists
				ifTrue: [workingCopy currentBranchOrHead]
				ifFalse: [nil]])
		forceChange: true.