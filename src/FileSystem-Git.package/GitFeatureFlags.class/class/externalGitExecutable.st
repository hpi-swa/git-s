accessing
externalGitExecutable
	<preference: 'External git executable' categoryList: #('Git expert settings') description: 'A path to the git executable for use with external git commands. Spaces are not escaped.' type: #String>

	^ ExternalGitExecutable ifNil: ['git']