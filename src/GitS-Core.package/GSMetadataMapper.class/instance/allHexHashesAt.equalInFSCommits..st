metadata-loading
allHexHashesAt: aPath equalInFSCommits: aVersionChange
	^ (aVersionChange collect: [:each | each commit hexHashAtPath: aPath]) versions asSet size = 1