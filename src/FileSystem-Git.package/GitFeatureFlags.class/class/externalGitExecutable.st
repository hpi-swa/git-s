accessing
externalGitExecutable
	<preference: 'External git executable' categoryList: #('Git expert settings') description: 'A replacement for ''git'' in commands like ''git fetch''. Can be a path to an executable or something like ''wsl git'' to use the git installation in wsl. Spaces (in paths) are not escaped to support the latter use case.' type: #String>

	^ ExternalGitExecutable ifNil: ['git']