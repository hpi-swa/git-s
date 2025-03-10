actions
addRemote: aGitRemote
	self unitOfWork addRemote: aGitRemote.
	(self confirm: ('Do you want to fetch the new remote {1} now?' format: {aGitRemote name printString}))
		ifTrue: [self workingCopy fetch: aGitRemote name].