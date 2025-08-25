accessing
commitList: aCommitList
	commitList ifNotNil: [commitList removeDependent: self].
	commitList := aCommitList.
	commitList ifNotNil: [commitList addDependent: self].