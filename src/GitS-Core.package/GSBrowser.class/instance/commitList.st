accessing
commitList
	^ commitList ifNil: [commitList := self createCommitList]