changes-operations
commitChangeSets: aCollection
onCommit: aCommitOrNil
message: aString
	^ self
		commitChangeSets: aCollection
		onCommit: aCommitOrNil
		message: aString
		parents: ({aCommitOrNil} select: #notNil)