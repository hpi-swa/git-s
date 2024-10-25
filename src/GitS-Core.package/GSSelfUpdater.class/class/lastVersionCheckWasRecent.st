check
lastVersionCheckWasRecent
	self lastVersionCheck ifNil: [^ false].
	^ DateAndTime now - self lastVersionCheck < self versionCheckInterval