check
checkForNewVersion
	GSPreferences checkForNewVersion ifFalse: [^ self].
	self lastVersionCheckWasRecent ifTrue: [^ self].
	self basicCheckForNewVersion.