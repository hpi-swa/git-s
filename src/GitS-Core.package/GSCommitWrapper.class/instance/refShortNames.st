initialization
refShortNames
	^ ((self workingCopy refsForCommit: self commit)
		collect: [:each | GitReference shortName: each])
		copyWithout: 'HEAD'