check
basicCheckForNewVersion
	self lastVersionCheckWasRecent ifTrue: [^ self].
	self lastVersionCheck: DateAndTime now.
	GSPreferences checkForNewVersion ifFalse: [^ self].
	(self isNewVersionAvailableIfError: [^ self]) ifTrue: [
		GSGUIUtilities onUIProcess: [self promptForNewVersion]].