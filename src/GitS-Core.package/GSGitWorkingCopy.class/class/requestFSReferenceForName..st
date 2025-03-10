instance creation
requestFSReferenceForName: aString
	| defaultDirectory defaultDirectoryExisted defaultDirectoryReference chosen |
	defaultDirectory := self defaultDirectoryForName: aString.
	defaultDirectoryExisted := defaultDirectory exists.
	defaultDirectoryReference := defaultDirectory asFSReference.
	defaultDirectoryReference ensureCreateDirectory.
	^ [
		chosen := GSGUIUtilities chooseDirectory: 'Repository location:' from: defaultDirectory.
		chosen
			asFSReference
			ensureCreateDirectory; "might be deleted during popup"
			yourself] ensure: [
		(defaultDirectoryExisted not
			and: [chosen ~= defaultDirectory]
			and: [defaultDirectoryReference isDirectory]
			and: [defaultDirectoryReference children isEmpty]) ifTrue: [defaultDirectoryReference delete]]