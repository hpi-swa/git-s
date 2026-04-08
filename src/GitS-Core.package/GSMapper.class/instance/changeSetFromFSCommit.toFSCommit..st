changes-creation
changeSetFromFSCommit: currentFSCommit toFSCommit: incomingFSCommit
	^ self changeSetFromFSCommits: (GSVersionChange current: currentFSCommit incoming: incomingFSCommit)