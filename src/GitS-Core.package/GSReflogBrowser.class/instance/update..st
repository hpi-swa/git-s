updating
update: anObject
	super update: anObject.
	((anObject isKindOf: GitReflog) and: [anObject logfile = self reflog logfile]) ifTrue: [self refreshReflog].