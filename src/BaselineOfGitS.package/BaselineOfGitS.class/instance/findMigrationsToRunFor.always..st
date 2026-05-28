migrations - running
findMigrationsToRunFor: aSelector always: aBoolean
	^ aBoolean
		ifTrue: [self findMigrationsFor: aSelector]
		ifFalse: [self findMigrationsToRunFor: aSelector]