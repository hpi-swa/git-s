menu
refTypeName: aStringOrNil
	aStringOrNil ifNil: [^ 'commit'].
	(self isSqueakBranchRef: aStringOrNil) ifTrue: [^ 'branch'].
	(self isRemoteRef: aStringOrNil) ifTrue: [^ 'remote-tracking branch'].
	(self isGitBranchRef: aStringOrNil) ifTrue: [^ 'external branch'].
	^ 'ref'