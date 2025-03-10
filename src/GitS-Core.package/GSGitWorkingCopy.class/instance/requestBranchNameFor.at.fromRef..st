branches
requestBranchNameFor: aString at: aCommit fromRef: aStringOrNil
	^ GSGUIUtilities
		request: ('Create {1} at {2}. Branch name:' format: {
					aString.
					self displayName: (aStringOrNil ifNil: [aCommit])})
		initialAnswer: (self recommendedBranchNameForRef: aStringOrNil)