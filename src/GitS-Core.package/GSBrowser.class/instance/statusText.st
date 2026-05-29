ui
statusText
	^ GSTextUtilities
		joinTexts: ({self activeWorkingCopy ifNotNil: #repositoryDoesNotExistStatusText. self activeCommitInfo} select: #notNil)
		separatedBy: String cr, String cr