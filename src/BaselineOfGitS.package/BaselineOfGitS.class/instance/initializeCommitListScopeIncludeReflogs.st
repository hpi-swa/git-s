migrations
initializeCommitListScopeIncludeReflogs
	<postLoadMigration: 8>
	GSCommitListScope allSubInstancesDo: [:each | each includeReflogs ifNil: [each includeReflogs: false]].