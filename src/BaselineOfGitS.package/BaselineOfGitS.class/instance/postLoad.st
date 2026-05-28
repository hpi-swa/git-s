baseline
postLoad
	GSSelfUpdater postInstallVersion: self installedVersion.
	self
		runMigrationsFor: #postLoadMigration:;
		runMigrationsFor: #postLoadMigrationAlways: always: true.