changes-creation
changeSetFromFSCommit: anFSCommit toImage: aWorkingCopy
	^ self changeSetFromSnapshots: (GSVersionChange
		current: (self loadSnapshotFrom: anFSCommit filesystem)
		incoming: self workingCopySnapshot)