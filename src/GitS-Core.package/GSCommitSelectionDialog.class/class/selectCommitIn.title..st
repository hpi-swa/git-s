dialog
selectCommitIn: aWorkingCopy title: aString
	^ (self new
		workingCopy: aWorkingCopy;
		title: aString;
		yourself)
			getCommit