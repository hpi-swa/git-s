changes-creation
changeSetToMergeFSCommits: aVersionMerge
	| snapshots merger |
	aVersionMerge
		hexHashMergeFor: self
		ifUnchanged: [^ self emptyChangeSet].
	snapshots := aVersionMerge collect: [:each | self loadSnapshotFrom: each filesystem fsCommits: aVersionMerge].
	merger := [GSThreewayCodeMerger
		base: snapshots current
		target: snapshots incoming
		ancestor: snapshots base]
			on: MCNoChangesException
			do: #resume.
	(merger operations isEmpty and: [merger conflicts isEmpty])
		ifTrue: [^ self emptyChangeSet].
	^ GSCodeChangeSet
		withMapper: self
		operations: merger operations
		conflicts: merger conflicts