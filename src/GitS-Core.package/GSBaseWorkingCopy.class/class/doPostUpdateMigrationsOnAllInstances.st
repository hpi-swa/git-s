migrations
doPostUpdateMigrationsOnAllInstances
	self allSubInstances
		do: #doPostUpdateMigrations
		displayingProgress: [:each | 'Migrating project {1}' format: {each name printString}].