serializing
serializeImage: aWorkingCopy into: aFileSystem
	(self loadAssetFileFromImage: aWorkingCopy) serializeInto: aFileSystem.