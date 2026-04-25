ui
refShortNamesForCommit: aCommit
	^ ((self activeWorkingCopy refsForCommit: aCommit)
		collect: [:each | GitReference shortName: each])
		copyWithout: 'HEAD'