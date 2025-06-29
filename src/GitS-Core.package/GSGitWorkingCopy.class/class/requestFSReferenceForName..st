instance creation
requestFSReferenceForName: aString
	| defaultDirectory defaultDirectoryExisted defaultDirectoryReference chosen |
	defaultDirectory := self defaultDirectoryForName: aString.
	defaultDirectoryExisted := defaultDirectory exists.
	defaultDirectoryReference := defaultDirectory asFSReference.
	defaultDirectoryReference ensureCreateDirectory.
	^ [chosen := self requestFSReferenceForDefault: defaultDirectory] ensure: [
		(defaultDirectoryExisted not
			and: [chosen ~= defaultDirectoryReference]
			and: [defaultDirectoryReference isDirectory]
			and: [defaultDirectoryReference children isEmpty]) ifTrue: [defaultDirectoryReference delete]]