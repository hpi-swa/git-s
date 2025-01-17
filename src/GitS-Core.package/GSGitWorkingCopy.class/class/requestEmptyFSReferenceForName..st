instance creation
requestEmptyFSReferenceForName: aString
	| reference |
	reference := (self requestFSReferenceForName: aString) ifNil: [^ nil].
	reference children ifEmpty: [^ reference].
	self inform: 'Please choose an empty directory or manually delete the contents of the chosen directory before selecting it again.'.
	^ self requestEmptyFSReferenceForName: aString