tests
testGitPackedObjectsRepositoriesAreRepositories
	GitPackedObject allSubInstancesDo: [:each | each repository ifNotNil: [:repository | self assert: repository class = GitRepository]].