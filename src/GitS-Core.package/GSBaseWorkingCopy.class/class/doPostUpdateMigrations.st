migrations
doPostUpdateMigrations
	self
		importLegacyProjects;
		doPostUpdateMigrationsOnAllInstances;
		migrateGitStoreLog;
		uninstallSquot.
	GSGUIUtilities queueNextCheckForNewVersion.