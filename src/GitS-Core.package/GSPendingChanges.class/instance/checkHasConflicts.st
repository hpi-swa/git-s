checking
checkHasConflicts
	self hasConflicts ifFalse: [^ false].
	self inform: 'There are conflicts. Please resolve them first. Aborting.'.
	^ true