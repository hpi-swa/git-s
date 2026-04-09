self-update
newVersionCheckInterval: aDuration
	<linterIgnoreUnsent> "preference setter"
	NewVersionCheckInterval := aDuration.
	GSSelfUpdater
		cancelNextCheckForNewVersion;
		queueNextCheckForNewVersion.