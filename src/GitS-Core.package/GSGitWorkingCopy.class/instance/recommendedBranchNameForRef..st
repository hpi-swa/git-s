branches
recommendedBranchNameForRef: aStringOrNil
	aStringOrNil ifNil: [^ ''].
	^ (self isRemoteTrackingBranch: aStringOrNil)
		ifTrue: [self remoteTrackingBranchBasename: aStringOrNil]
		ifFalse: [GitReference shortName: aStringOrNil]