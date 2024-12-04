menu
refTypeName: aStringOrNil
	aStringOrNil ifNil: [^ 'commit'].
	(self isSqueakBranchRef: aStringOrNil) ifTrue: [^ 'branch'].
	(self isRemoteRef: aStringOrNil) ifTrue: [^ 'remote-tracking branch'].
	^ 'ref'