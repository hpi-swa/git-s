snapshot-creation
differOn: aReference fsCommits: aVersionChange
	^ (self differClass on: aReference)
		fileUtils: (self fileUtilsOn: aReference);
		fsCommits: aVersionChange;
		packageDirectory: aReference pathString;
		yourself