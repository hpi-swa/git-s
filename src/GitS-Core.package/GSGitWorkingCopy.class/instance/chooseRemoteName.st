remotes
chooseRemoteName
	<linterIgnoreSends: #(addNew)>
	| remoteNames remoteName |
	[remoteNames := self unitOfWork remoteNames.
	remoteNames isEmpty] whileTrue: [
		GSGUIUtilities confirmOrCancel:
			'No remotes are configured for this project. Do you want to add one now?'.
		^ self actionAddRemote].
	 remoteName := GSGUIUtilities
		title: 'Remote:'
		chooseFrom: (remoteNames copyWith: 'Add new')
		values: (remoteNames copyWith: #addNew).
	remoteName = #addNew ifTrue: [^ self actionAddRemote].
	^ remoteName