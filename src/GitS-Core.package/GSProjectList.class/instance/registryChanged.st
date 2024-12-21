updating
registryChanged
	(self workingCopy ifNil: [^ self]) isRegistered ifFalse: [self workingCopy: nil].
	self
		changed: #list;
		changed: #project. "for renames"