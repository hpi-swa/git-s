accessing
githubApiRepositoryUrl
	^ 'https://api.github.com/repos/{1}' format: {self fullRepositoryName}