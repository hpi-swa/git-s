check
basicCheckForNewVersion
	(self isNewVersionAvailableIfError: [^ self]) ifTrue: [self promptForNewVersion].
	self lastVersionCheck: DateAndTime now.