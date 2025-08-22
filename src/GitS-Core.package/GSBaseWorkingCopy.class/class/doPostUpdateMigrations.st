migrations
doPostUpdateMigrations
	self
		importLegacyProjects;
		doPostUpdateMigrationsOnAllInstances;
		migrateGitStoreLog;
		uninstallSquot.
	GSSelfUpdater queueNextCheckForNewVersion.