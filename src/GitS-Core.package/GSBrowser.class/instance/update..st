updating
update: anObject
	super update: anObject.
	anObject = self activeWorkingCopy ifTrue: [self everythingChanged].
	(anObject isKindOf: GitReference) ifTrue: [self refChanged: anObject].
	anObject = #allReferences ifTrue: [self refsChanged].
	anObject = #activeCommit ifTrue: [self changed: #activeCommitInfo].
	self changed: anObject.