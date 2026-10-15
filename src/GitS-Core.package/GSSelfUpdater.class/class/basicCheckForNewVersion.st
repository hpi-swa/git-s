check
basicCheckForNewVersion
	| latestVersion |
	self lastVersionCheckWasRecent ifTrue: [^ self].
	self lastVersionCheck: DateAndTime now.
	GSPreferences checkForNewVersion ifFalse: [^ self].
	latestVersion := self latestVersionIfError: [^ self].
	latestVersion = self installedVersion ifTrue: [^ self].
	GSGUIUtilities onUIProcess: [self promptForNewVersion: latestVersion].