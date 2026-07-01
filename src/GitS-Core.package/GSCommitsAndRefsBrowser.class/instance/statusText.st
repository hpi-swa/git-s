ui
statusText
	^ GSTextUtilities
		joinTexts: ({self workingCopyOrNil ifNotNil: #repositoryDoesNotExistStatusText. self activeCommitInfo} select: #notNil)
		separatedBy: String cr, String cr