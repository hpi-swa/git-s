diffing
diffFromStrings: aVersionChange
	^ self diffFromLines: (aVersionChange collect: #lines)