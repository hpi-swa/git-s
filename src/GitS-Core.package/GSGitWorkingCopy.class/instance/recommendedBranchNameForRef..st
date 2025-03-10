branches
recommendedBranchNameForRef: aStringOrNil
	aStringOrNil ifNil: [^ ''].
	^ (self isRemoteRef: aStringOrNil)
		ifTrue: [self remoteRefName: aStringOrNil]
		ifFalse: [GitReference shortName: aStringOrNil]