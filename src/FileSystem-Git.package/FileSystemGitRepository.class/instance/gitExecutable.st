git porcelain - external
gitExecutable
	| exec |
	exec := GitFeatureFlags externalGitExecutable.
	(self commandExists: exec) ifTrue: [^ exec].
	exec := UIManager default
		request:
			('Git could not be found at the path below.
			Please install it or provide a path to the git executable. {1}'
				withoutLineEndings withBlanksCondensed
				format: {self suggestWSLGitInstallation})
		initialAnswer: exec.
	exec isEmptyOrNil ifTrue: [^ self error: 'Missing external git installation'].
	GitFeatureFlags externalGitExecutable: exec.
	^ self gitExecutable