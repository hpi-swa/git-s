check
promptForNewVersion
	(self confirm: 'A new version of git/s is available. Do you want to install it?') ifFalse: [^ self].
	self selfUpdate.