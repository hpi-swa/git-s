migrations
initializeCommitListErrors
	<postLoadMigration: 21>
	GSCommitList allSubInstancesDo: [:each | each errors ifNil: [each errors: OrderedCollection new]].