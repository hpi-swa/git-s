instance creation
newWithWorkingCopy: aWorkingCopy commits: aCollection
	^ self
		newWithWorkingCopy: aWorkingCopy
		commands: (aCollection collect: [:each | GSRebaseCommandPick newWithCommit: each])