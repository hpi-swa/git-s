migrations
initializeUnitOfWorkObjectCaches
	<postLoadMigration: 19>
	GitUnitOfWork allSubInstancesDo: [:each | each repository: each repository].