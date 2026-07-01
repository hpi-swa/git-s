compiling
createModel
	^ self modelClass new
		commitList: self commitList;
		workingCopy: self workingCopyOrNil;
		yourself