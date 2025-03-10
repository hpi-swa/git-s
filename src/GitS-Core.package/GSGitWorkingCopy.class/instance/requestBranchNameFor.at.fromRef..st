branches
requestBranchNameFor: aString at: aCommit fromRef: aStringOrNil
	^ GSGUIUtilities
		request: ('Create {1} at {2}. Branch name:' format: {
					aString.
					self displayName: (aStringOrNil ifNil: [aCommit])})
		initialAnswer: (aStringOrNil
							ifNil: ['']
							ifNotNil: [:ref |
								(self isRemoteRef: ref)
									ifTrue: [self remoteRefName: ref]
									ifFalse: [GitReference shortName: ref]])