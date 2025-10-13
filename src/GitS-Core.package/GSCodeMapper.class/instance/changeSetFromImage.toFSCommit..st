changes-creation
changeSetFromImage: aWorkingCopy toFSCommit: anFSCommit
	^ self changeSetFromSnapshots: (GSVersionChange
		current: self workingCopySnapshot
		incoming: (self loadSnapshotFrom: anFSCommit filesystem))