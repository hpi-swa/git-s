snapshot-creation
diffReaderOn: aReference fsCommits: aVersionChange
	^ (GSTonelDiffReader
		on: aReference parent
		fileName: self package name)
			fsCommits: aVersionChange;
			yourself