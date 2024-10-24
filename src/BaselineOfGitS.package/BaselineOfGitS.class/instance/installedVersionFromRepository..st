accessing
installedVersionFromRepository: each
	(self installedVersionFromGitHubRepository: each) ifNotNil: [:version | ^ version].
	(self installedVersionFromDirectoryRepository: each) ifNotNil: [:version | ^ version].
	^ nil