instance creation
tryMCRepositoryNamed: aString
	| directory workingCopy fileSystem |
	directory := self scanForMCRepositoryDirectory: aString ifAbsent: [^ nil].
	workingCopy := GSBaseWorkingCopy newWithNameAndRegister: aString.
	fileSystem := GSSubFileSystem onReference: directory.
	workingCopy mappers:
		(workingCopy metadataMapper loadMappersFromFileSystem: fileSystem).
	(workingCopy mappersOfKind: GSAssetMapper) do: [:each |
		each materialize: (each loadAssetFileFrom: fileSystem) in: workingCopy].
	^ self forWorkingCopy: workingCopy