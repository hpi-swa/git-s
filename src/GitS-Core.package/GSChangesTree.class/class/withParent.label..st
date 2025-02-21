instance creation
withParent: aChangesTree label: aString
	^ self new
		parent: aChangesTree;
		label: aString;
		yourself