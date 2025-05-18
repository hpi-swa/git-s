updating
registryChanged
	self changed: #list.
	(self workingCopy ifNil: [^ self]) isRegistered ifFalse: [self workingCopy: nil].
	self changed: #project. "for renames"