changes-operations
commitChanges: changeCollection
onCommit: aCommitOrNil
message: aString
parents: parentCollection
	| fileSystem |
	fileSystem := self serializeChanges: changeCollection onCommit: aCommitOrNil.
	^ fileSystem prepareNewCommit
		message: aString withUnixLineEndings;
		parents: (parentCollection collect: #asHexHash);
		yourself