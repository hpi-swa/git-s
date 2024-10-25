check
basicCheckForNewVersion
	self isNewVersionAvailable ifTrue: [self promptForNewVersion].
	self lastVersionCheck: DateAndTime now.