accessing
differs: anEntry
	^ (self fsCommits collect: [:each | each commit hexHashAtPath: anEntry path]) notEmpty