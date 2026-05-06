snapshot-creation
differOn: aReference fsCommits: aVersionChange
	^ (GSTonelDiffer
		on: aReference parent
		fileName: self package name)
			fsCommits: aVersionChange;
			yourself