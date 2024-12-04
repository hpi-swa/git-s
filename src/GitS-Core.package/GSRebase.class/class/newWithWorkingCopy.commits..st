instance creation
newWithWorkingCopy: aWorkingCopy commits: aCollection
	^ self
		newWithWorkingCopy: aWorkingCopy
		operations: (aCollection collect: [:each | GSRebaseOperationPick newWithCommit: each])