serializing
serializeImage: aWorkingCopy into: aFileSystem
	self serialize: (self loadMetadataFromWorkingCopy: aWorkingCopy) into: aFileSystem.