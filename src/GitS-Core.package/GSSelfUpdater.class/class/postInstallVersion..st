self-updating
postInstallVersion: aString
	| oldVersion |
	oldVersion := self installedVersion.
	self
		installedVersion: (self getShaOfVersion: aString);
		showChangeLogFrom: oldVersion.