accessing
installedVersionFromDirectoryRepository: anMCRepository
	| current |
	(anMCRepository isKindOf: MCDirectoryRepository) ifFalse: [^ nil].
	current := anMCRepository directory asFSReference.
	[current isRoot] whileFalse: [ | repository |
		repository := GitRepository uninitializedOn: current.
		repository exists ifTrue: [^ repository unitOfWork headRef].
		current := current parent].
	^ nil