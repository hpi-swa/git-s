refs
currentBranchOrHead
	^ self currentSymbolicHeadTarget ifNil: [self headRefName]