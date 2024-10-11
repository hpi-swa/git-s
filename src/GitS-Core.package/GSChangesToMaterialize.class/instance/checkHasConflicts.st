checking
checkHasConflicts
	self hasConflicts ifFalse: [^ false].
	self inform: ('There are conflicts. Please resolve them before {1}. Aborting.'
					format: {self actionLabelInIngForm}).
	^ true