enumerating
stringsOfEntry: aGitTreeEntry do: aBlock
	aGitTreeEntry isInDirectoryMode ifTrue: [aBlock value: aGitTreeEntry name].