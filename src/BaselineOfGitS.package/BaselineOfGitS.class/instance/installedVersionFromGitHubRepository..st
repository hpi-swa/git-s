accessing
installedVersionFromGitHubRepository: anMCRepository
	(anMCRepository isKindOf: MCFetchGithubRepository) ifFalse: [^ nil].
	anMCRepository projectPath = GSSelfUpdater fullRepositoryName ifFalse: [^ nil].
	^ anMCRepository projectVersion