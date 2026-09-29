changes-operations
commitChanges: aCollection
onCommit: aCommitOrNil
message: aString
	^ self
		commitChanges: aCollection
		onCommit: aCommitOrNil
		message: aString
		parents: ({aCommitOrNil} select: #notNil)