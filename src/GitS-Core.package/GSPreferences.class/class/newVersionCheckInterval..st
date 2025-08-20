self-update
newVersionCheckInterval: aDuration
	NewVersionCheckInterval := aDuration.
	GSSelfUpdater
		cancelNextCheckForNewVersion;
		queueNextCheckForNewVersion.