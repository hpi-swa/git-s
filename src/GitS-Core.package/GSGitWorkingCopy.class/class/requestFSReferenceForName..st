instance creation
requestFSReferenceForName: aString
	| defaultDirectory defaultDirectoryExisted defaultDirectoryReference chosen chosenReference |
	defaultDirectory := self defaultDirectoryForName: aString.
	defaultDirectoryExisted := defaultDirectory exists.
	defaultDirectoryReference := defaultDirectory asFSReference.
	defaultDirectoryReference ensureCreateDirectory.
	chosen := UIManager default chooseDirectory: 'Repository location:' from: defaultDirectory.
	(defaultDirectoryExisted not
		and: [chosen ~= defaultDirectory]
		and: [defaultDirectoryReference isDirectory]
		and: [defaultDirectoryReference children isEmpty]) ifTrue: [defaultDirectoryReference delete].
	chosenReference := chosen ifNotNil: #asFSReference.
	chosenReference ifNotNil: #ensureCreateDirectory. "might be deleted during popup"
	^ chosenReference