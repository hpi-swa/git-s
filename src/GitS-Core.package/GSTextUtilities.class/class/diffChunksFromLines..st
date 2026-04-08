diffing
diffChunksFromLines: aVersionChange
	^ self diffClass new
		file1: aVersionChange current;
		file2: aVersionChange incoming;
		comm