testing
repositoryDoesNotExistInfo
	^ 'The repository {1} has disappeared from the disk (it was at {2}).'
		gitSFormat: {self name printString. self repository baseDir}