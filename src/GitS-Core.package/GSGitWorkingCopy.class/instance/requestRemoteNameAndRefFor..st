upstream
requestRemoteNameAndRefFor: aString
	| remoteName ref |
	remoteName := self chooseRemoteName.
	ref := GSGUIUtilities
			request: 'Remote ref name:'
			initialAnswer: (self initialRemoteRefNameFor: aString).
	ref := self fsgitRepository expandRemoteRef: ref.
	^ remoteName -> ref