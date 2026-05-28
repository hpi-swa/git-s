migrations
breakCommitListDependencyCycle
	<postLoadMigration: 7>
	GSCommitList allSubInstancesDo: [:each | each removeDependent: each browser].