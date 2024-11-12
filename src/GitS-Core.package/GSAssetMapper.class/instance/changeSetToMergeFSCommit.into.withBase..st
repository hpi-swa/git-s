changes-creation
changeSetToMergeFSCommit: rightFSCommit into: leftFSCommit withBase: baseFSCommit
	| left right base |
	GSMergeUtilities
		hexHashMergeFor: self
		left: leftFSCommit
		right: rightFSCommit
		base: baseFSCommit
		ifUnchanged: [:emptyChangeSet | ^ emptyChangeSet].
	left := self loadAssetFileFrom: leftFSCommit filesystem.
	right := self loadAssetFileFrom: rightFSCommit filesystem.
	base := self loadAssetFileFrom: baseFSCommit filesystem.
	^ self changeSetToMergeAssetFile: right into: left withBase: base