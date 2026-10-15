ui
statusTextChunks
	^ {
		self workingCopyOrNil ifNotNil: #repositoryDoesNotExistStatusText.
		self errorsStatusText.
		self activeCommitInfo.
	} reject: #isNil