check
cancelNextCheckForNewVersion
	QueuedCheckForNewVersionProcess ifNotNil: [:process |
		process terminate.
		QueuedCheckForNewVersionProcess := nil].