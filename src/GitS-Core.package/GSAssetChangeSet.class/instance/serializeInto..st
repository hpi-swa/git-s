operations
serializeInto: aFileSystem
	self isExcluded ifTrue: [^ self].
	self mapper serialize: self assetFileToWrite into: aFileSystem.