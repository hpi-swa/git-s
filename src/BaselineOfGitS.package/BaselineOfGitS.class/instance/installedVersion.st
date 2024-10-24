accessing
installedVersion
	(self project version spec repositorySpecs collect: #createRepository) do: [:each |
		(self installedVersionFromRepository: each) ifNotNil: [:version | ^ version]].
	self error:
		'Please install git-s via git, either using a Metacello GitHub repository
		or by cloning git-s using a git client (e. g. using a GitHub action).'
			withoutLineEndings withBlanksCondensed.