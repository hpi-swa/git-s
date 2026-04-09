initialization
decorations
	^ ((((self workingCopy refsForCommit: self commit)
		collect: [:each | GitReference shortName: each])
		copyWithout: 'HEAD')
		sorted
		collect: [:each | '[', each, '] '])
		join