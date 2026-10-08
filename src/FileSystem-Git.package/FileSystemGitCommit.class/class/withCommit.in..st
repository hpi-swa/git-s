instance creation
withCommit: aGitCommit in: aFileSystemGitRepository
	^ self new
		commit: aGitCommit;
		fsgitRepository: aFileSystemGitRepository;
		yourself