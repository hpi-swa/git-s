enumerating
stringsOfEntry: aGitTreeEntry do: aBlock
	aGitTreeEntry isInFileMode ifTrue: [aBlock value: aGitTreeEntry name].