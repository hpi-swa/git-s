requests
requestAndSetBranchName
	| branchName |
	branchName := self requestBranchName.
	branchName isEmptyOrNil ifTrue: [^ false].
	self branchName: branchName.
	^ true