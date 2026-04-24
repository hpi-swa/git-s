accessing
isCommitModified
	self followingCommands do: [:each |
		each createsCommit ifTrue: [^ false].
		each modifiesPreviousCommit ifTrue: [^ true]].
	^ false