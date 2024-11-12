merging
hexHashMergeFor: aMapper
left: leftFSCommit
right: rightFSCommit
base: baseFSCommit
ifUnchanged: unchangedBlock
	| leftHexHash |
	leftHexHash := aMapper hexHashIn: leftFSCommit.
	self
		atomicMergeLeft: leftHexHash
		right: (aMapper hexHashIn: rightFSCommit)
		base: (aMapper hexHashIn: baseFSCommit)
		ifUnchanged: [unchangedBlock value: (GSEmptyChangeSet
													withMapper: aMapper
													isRemoval: leftHexHash isNil)]
		ifMerged: [:merged |]
		ifConflict: [:conflict |].