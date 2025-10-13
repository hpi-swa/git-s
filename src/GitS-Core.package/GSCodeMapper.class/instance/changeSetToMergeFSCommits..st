changes-creation
changeSetToMergeFSCommits: aVersionMerge
	| snapshots merger |
	aVersionMerge
		hexHashMergeFor: self
		ifUnchanged: [:emptyChangeSet | ^ emptyChangeSet].
	snapshots := aVersionMerge collect: [:each | self loadSnapshotFrom: each filesystem].
	merger := [GSThreewayCodeMerger
		base: snapshots current
		target: snapshots incoming
		ancestor: snapshots base]
			on: MCNoChangesException
			do: #resume.
	(merger operations isEmpty and: [merger conflicts isEmpty])
		ifTrue: [^ GSEmptyChangeSet withMapper: self].
	^ GSCodeChangeSet
		withMapper: self
		operations: merger operations
		conflicts: merger conflicts