changes-creation
changeSetFromFSCommit: anFSCommit toFSCommit: anotherFSCommit
	self
		hexHashesFrom: (self hexHashIn: anFSCommit)
		to: (self hexHashIn: anotherFSCommit)
		ifEqual: [:emptyChangeSet | ^ emptyChangeSet].
	^ self
		changeSetFromAssetFile: (self loadAssetFileFrom: anFSCommit filesystem)
		toAssetFile: (self loadAssetFileFrom: anotherFSCommit filesystem)