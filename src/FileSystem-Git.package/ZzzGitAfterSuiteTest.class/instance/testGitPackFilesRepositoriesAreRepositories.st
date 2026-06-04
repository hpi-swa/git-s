tests
testGitPackFilesRepositoriesAreRepositories
	GitPackFile allSubInstancesDo: [:each | each repository ifNotNil: [:repository | self assert: repository class = GitRepository]].