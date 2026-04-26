branch-stashes
branchStashNameFromBranch: aString
	self assert: (self isBranch: aString).
	^ self branchStashName: (self branchBasename: aString)