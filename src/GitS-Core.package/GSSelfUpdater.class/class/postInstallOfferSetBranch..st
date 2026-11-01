self-updating
postInstallOfferSetBranch: aString
	aString = self branchName ifTrue: [^ self].
	(self confirm:
		('You installed git/s from the version {1},
		but the current self-update branch is set to {2}.
		Do you want to switch to the newly installed branch?'
			gitSFormat: {aString printString. self branchName printString}))
		ifFalse: [^ self].
	self branchName: aString.