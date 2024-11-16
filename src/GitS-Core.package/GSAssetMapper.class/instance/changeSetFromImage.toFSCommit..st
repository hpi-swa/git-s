changes-creation
changeSetFromImage: aWorkingCopy toFSCommit: anFSCommit
	| imageAssetFile |
	imageAssetFile := self loadAssetFileFromImage: aWorkingCopy.
	self
		hexHashesFrom: (imageAssetFile ifNotNil: #hexHash)
		to: (self hexHashIn: anFSCommit)
		ifEqual: [:emptyChangeSet | ^ emptyChangeSet].
	^ self
		changeSetFromAssetFile: imageAssetFile
		toAssetFile: (self loadAssetFileFrom: anFSCommit filesystem)