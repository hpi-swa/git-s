check
queueNextCheckForNewVersion
	QueuedCheckForNewVersionProcess ifNotNil: [^ self].
	QueuedCheckForNewVersionProcess := [ | waitDuration |
		[waitDuration := GSPreferences newVersionCheckInterval.
		self lastVersionCheck ifNotNil: [:time |
			waitDuration := time + waitDuration - DateAndTime now clampLow: Duration zero].
		waitDuration wait]
			ensure: [QueuedCheckForNewVersionProcess := nil].
		self checkForNewVersion]
			forkAt: Processor userBackgroundPriority.