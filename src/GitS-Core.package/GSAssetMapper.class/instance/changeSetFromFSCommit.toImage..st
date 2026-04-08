changes-creation
changeSetFromFSCommit: anFSCommit toImage: aWorkingCopy
	| imageAssetFile |
	imageAssetFile := self loadAssetFileFromImage: aWorkingCopy.
	self
		hexHashesFrom: (self hexHashIn: anFSCommit)
		to: (imageAssetFile ifNotNil: #hexHash)
		ifEqual: [:emptyChangeSet | ^ emptyChangeSet].
	^ self changeSetFromAssetFiles: (GSVersionChange
		current: (self loadAssetFileFrom: anFSCommit filesystem)
		incoming: imageAssetFile)