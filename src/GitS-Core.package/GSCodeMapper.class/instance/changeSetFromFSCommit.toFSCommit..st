changes-creation
changeSetFromFSCommit: anFSCommit toFSCommit: anotherFSCommit
	self
		hexHashesFrom: (self hexHashIn: anFSCommit)
		to: (self hexHashIn: anotherFSCommit)
		ifEqual: [:emptyChangeSet | ^ emptyChangeSet].
	^ self
		changeSetFromSnapshot: (self loadSnapshotFrom: anFSCommit filesystem)
		toSnapshot: (self loadSnapshotFrom: anotherFSCommit filesystem)