updating
update: anObject
	super update: anObject.
	(anObject = #activeWorkingCopy
		or: [anObject = #allReferences]
		or: [anObject = #activeRef and: [self includeActiveRef]]
		or: [anObject isKindOf: GitReference])
			ifTrue: [self changed].