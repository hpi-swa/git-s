operations
serializeInto: aFileSystem
	self isExcluded ifTrue: [^ self].
	self assetFileToWrite serializeInto: aFileSystem.