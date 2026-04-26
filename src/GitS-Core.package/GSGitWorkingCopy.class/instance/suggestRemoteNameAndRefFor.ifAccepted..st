upstream
suggestRemoteNameAndRefFor: aString ifAccepted: aBlock
	| remoteNames remoteName ref |
	remoteNames := self unitOfWork remoteNames.
	remoteNames size = 1 ifFalse: [^ self].
	remoteName := remoteNames anyOne.
	ref := self initialRemoteRefNameFor: aString.
	(GSGUIUtilities
		chooseOptionFromLabeledValues: {'Yes' -> true. 'No, choose a different one' -> false}
		title: ('Do you want to use {1} on the remote {2} as the remote branch?' format: {ref printString. remoteName printString})
		cancelLabel: 'Cancel')
			ifFalse: [^ self].
	ref := self fsgitRepository expandRemoteRef: ref.
	^ aBlock value: remoteName -> ref