changes-creation
changeSetToMergeFSCommit: rightFSCommit into: leftFSCommit withBase: baseFSCommit
	| merger leftSnapshot |
	GSMergeUtilities
		hexHashMergeFor: self
		left: leftFSCommit
		right: rightFSCommit
		base: baseFSCommit
		ifUnchanged: [:emptyChangeSet | ^ emptyChangeSet].
	leftSnapshot := self loadSnapshotFrom: leftFSCommit filesystem.
	merger := [GSThreewayCodeMerger
		base: leftSnapshot
		target: (self loadSnapshotFrom: rightFSCommit filesystem)
		ancestor: (self loadSnapshotFrom: baseFSCommit filesystem)]
			on: MCNoChangesException
			do: #resume.
	(merger operations isEmpty and: [merger conflicts isEmpty])
		ifTrue: [^ GSEmptyChangeSet
					withMapper: self
					isRemoval: (self isEmpty: leftSnapshot)].
	^ GSCodeChangeSet
		withMapper: self
		from: leftSnapshot
		operations: merger operations
		conflicts: merger conflicts