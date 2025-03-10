branches
createBranchNamed: aString atCommit: aCommit
	| refName target |
	refName := self branchName: aString.
	self checkRefExists: refName displayName: aString.
	target := aCommit hexHash.
	self unitOfWork updateRef: refName to: target message: 'branch: Created from ', target.
	^ refName