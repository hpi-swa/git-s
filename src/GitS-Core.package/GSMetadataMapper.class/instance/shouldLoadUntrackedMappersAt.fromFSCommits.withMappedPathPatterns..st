metadata-loading
shouldLoadUntrackedMappersAt: aPath fromFSCommits: aVersionChange withMappedPathPatterns: mappedPathPatternsCollection
	^ (mappedPathPatternsCollection anySatisfy: [:each | each matches: aPath])
		or: [(self allHexHashesAt: aPath equalInFSCommits: aVersionChange) not]