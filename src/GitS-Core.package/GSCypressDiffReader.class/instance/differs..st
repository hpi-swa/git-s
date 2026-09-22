accessing
differs: aDirectory
	^ (self fsCommits collect: [:each | each commit hexHashAtPath: aDirectory path]) isNoop not