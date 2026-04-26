menu
refTypeName: aStringOrNil
	aStringOrNil ifNil: [^ 'commit'].
	(self isBranch: aStringOrNil) ifTrue: [^ 'branch'].
	(self isRemoteTrackingBranch: aStringOrNil) ifTrue: [^ 'remote-tracking branch'].
	(self isExternalBranch: aStringOrNil) ifTrue: [^ 'external branch'].
	^ 'ref'