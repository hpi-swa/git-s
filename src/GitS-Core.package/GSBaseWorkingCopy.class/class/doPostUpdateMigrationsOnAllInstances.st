migrations
doPostUpdateMigrationsOnAllInstances
	self allInstances
		do: [:each | each withUnitOfWork: [each doPostUpdateMigrations]]
		displayingProgress: [:each | 'Migrating project {1}' format: {each name printString}].