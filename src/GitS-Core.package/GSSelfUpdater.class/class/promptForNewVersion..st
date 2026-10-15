check
promptForNewVersion: newVersionString
	(self confirm: ('A new version of git/s is available. {1}. Do you want to install it?' asText
					format: {GSTextUtilities
								onClick: 'Preview change log'
								do: [self previewChangeLogFor: newVersionString]}))
		ifFalse: [^ self].
	self selfUpdate.