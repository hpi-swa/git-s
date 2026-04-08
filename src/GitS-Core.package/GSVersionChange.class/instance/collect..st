enumerating
collect: aBlock
	^ self fromVersions: (self versions collect: aBlock)