instance creation
emptyIn: aRepository
	| stamp |
	stamp := GitStamp now.
	^ self
		withTree: (GitTree emptyIn: aRepository)
		message: ''
		author: stamp
		committer: stamp
		in: aRepository