enumerating
with: aVersionChange collect: aBlock
	^ self fromVersions: (self versions with: aVersionChange versions collect: aBlock)