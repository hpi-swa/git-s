check
basicCheckForNewVersion
	GSPreferences checkForNewVersion ifFalse: [^ self].
	self lastVersionCheckWasRecent ifTrue: [^ self].
	self lastVersionCheck: DateAndTime now.
	(self isNewVersionAvailableIfError: [^ self]) ifTrue: [self promptForNewVersion].