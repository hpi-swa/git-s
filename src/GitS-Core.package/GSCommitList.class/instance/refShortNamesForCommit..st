ui
refShortNamesForCommit: aCommit
	^ ((self workingCopyOrNil refsForCommit: aCommit)
		collect: [:each | GitReference shortName: each])
		copyWithout: 'HEAD'