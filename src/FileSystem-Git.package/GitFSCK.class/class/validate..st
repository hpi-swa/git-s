validating
validate: aGitRepository
	^ self new 
		repository: aGitRepository; 
		validate