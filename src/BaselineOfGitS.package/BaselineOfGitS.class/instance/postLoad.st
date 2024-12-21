post-load
postLoad
	GSSelfUpdater postInstallVersion: self installedVersion.
	GSBaseWorkingCopy doPostUpdateMigrations.
	GSBrowser allInstances do: #reopen.