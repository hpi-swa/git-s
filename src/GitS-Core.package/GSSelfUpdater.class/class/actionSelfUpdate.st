self-updating
actionSelfUpdate
	(self isNewVersionAvailableIfError: [true]) ifFalse: [
		GSGUIUtilities confirmOrCancel:
			'No new version seems to be available. Do you want to update anyway?'].
	self selfUpdate.