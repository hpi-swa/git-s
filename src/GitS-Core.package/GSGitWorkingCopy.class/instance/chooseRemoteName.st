remotes
chooseRemoteName
	| remoteNames |
	[remoteNames := self unitOfWork remoteNames.
	remoteNames isEmpty] whileTrue: [
		GSGUIUtilities confirmOrCancel:
			'No remotes are configured for this project. Do you want to add one now?'.
		self actionAddRemote].
	^ GSGUIUtilities
		chooseFrom: remoteNames
		values: remoteNames
		title: 'Remote:'