serializing
serializeImage: aWorkingCopy into: aFileSystem
	self serialize: (self loadAssetFileFromImage: aWorkingCopy) into: aFileSystem.