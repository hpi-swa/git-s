changes-creation
changesToMergeFSCommits: aVersionMerge
	| snapshots merger |
	aVersionMerge
		hexHashMergeFor: self
		ifUnchanged: [^ #()].
	snapshots := aVersionMerge collect: [:each | self loadSnapshotFrom: each filesystem fsCommits: aVersionMerge].
	merger := [GSThreewayCodeMerger
		base: snapshots current
		target: snapshots incoming
		ancestor: snapshots base]
			on: MCNoChangesException
			do: #resume.
	^ GSCodeChange
		changesWithMapper: self
		operations: merger operations
		conflicts: merger conflicts