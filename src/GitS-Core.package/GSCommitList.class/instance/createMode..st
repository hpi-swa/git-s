initialize-release
createMode: aCommitListModeClass
	^ aCommitListModeClass new
		commitList: self;
		addDependent: self;
		yourself