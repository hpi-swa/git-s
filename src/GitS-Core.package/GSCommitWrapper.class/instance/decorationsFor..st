initialization
decorationsFor: aCommit
	^ ((((self workingCopy refsForCommit: aCommit)
		collect: [:each | GitReference shortName: each])
		copyWithout: 'HEAD')
		sorted
		collect: [:each | '[', each, '] '])
		join