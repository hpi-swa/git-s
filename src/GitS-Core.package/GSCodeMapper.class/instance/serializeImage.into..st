serializing
serializeImage: aWorkingCopy into: aFileSystem
	self serialize: (self workingCopySnapshot) into: aFileSystem.