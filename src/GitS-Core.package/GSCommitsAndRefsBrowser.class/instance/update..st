updating
update: anObject
	super update: anObject.
	anObject = self workingCopyOrNil ifTrue: [self everythingChanged].
	(anObject isKindOf: GitReference) ifTrue: [self refChanged: anObject].
	anObject = #allReferences ifTrue: [self refsChanged].
	self changed: anObject.