tests
testGitObjectsRepositoriesAreRepositories
	GitObject allSubInstancesDo: [:each | each repository ifNotNil: [:repository | self assert: repository class = GitRepository]].
	"Fixup:"
	"GitObject allSubInstancesDo: [:each |
		each repository class = GitUnitOfWork ifTrue:
			[each repository: each repository repository]]"