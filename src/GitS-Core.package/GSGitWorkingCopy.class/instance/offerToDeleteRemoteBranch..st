actions-refs
offerToDeleteRemoteBranch: aString
	(self isRemoteTrackingBranch: aString) ifFalse: [^ self].
	GSGUIUtilities
		chooseOptionFromLabeledBlocks: {
			'Yes' -> [self deleteRemoteBranch: aString].
			'No, just the remote-tracking branch' -> [].
		}
		title: ('{1} is a remote-tracking branch. Do you want to delete the branch on the remote?'
				gitSFormat: {(GitReference shortName: aString) printString})
		cancelLabel: 'Cancel'.