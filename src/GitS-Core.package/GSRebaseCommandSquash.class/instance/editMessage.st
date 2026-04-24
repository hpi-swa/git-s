accessing
editMessage
	self followingCommands do: [:each |
		each createsCommit ifTrue: [^ true].
		(each modifiesPreviousCommit and: [each editsMessage]) ifTrue: [^ false]].
	^ true