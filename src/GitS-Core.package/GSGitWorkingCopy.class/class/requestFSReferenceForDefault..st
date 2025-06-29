instance creation
requestFSReferenceForDefault: aDirectory
	^ (GSGUIUtilities chooseDirectory: 'Repository location:' from: aDirectory)
		asFSReference
		ensureCreateDirectory; "might be deleted during popup"
		yourself