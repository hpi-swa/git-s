branch-stashes
branchStashNameFromBranch: aString
	self assert: (self isSqueakBranchRef: aString).
	^ self branchStashName: (aString allButFirst: self branchesBaseName size)