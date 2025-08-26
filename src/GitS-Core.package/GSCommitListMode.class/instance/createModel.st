compiling
createModel
	^ self modelClass new
		commitList: self commitList;
		workingCopy: self activeWorkingCopy;
		yourself