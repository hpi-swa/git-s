self-updating
actionSelfUpdate
	(self isNewVersionAvailableIfError: [true]) ifFalse: [
		(self confirm: 'No new version seems to be available. Do you want to update anyway?')
			ifFalse: [^ self]].
	self selfUpdate.