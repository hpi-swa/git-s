migrations
doPostUpdateMigrations
	self
		importLegacyProjects;
		doPostUpdateMigrationsOnAllInstances;
		migrateGitStoreLog;
		uninstallSquot.