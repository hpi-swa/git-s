migrations
registerWorkingCopiesAsDependentsOfCodeMapperClass
	<postLoadMigration: 18>
	GSGitWorkingCopy allSubInstancesDo: [:each | GSCodeMapper addDependent: each].