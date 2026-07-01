snapshot-creation
diffReaderOn: aReference fsCommits: aVersionChange
	^ (GSCypressDiffReader on: aReference)
		fileUtils: (self fileUtilsOn: aReference);
		fsCommits: aVersionChange;
		packageDirectory: aReference pathString;
		yourself