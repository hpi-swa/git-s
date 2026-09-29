building
bumpMapperVersionIfNecessary: aMapper
	| currentMapper changes |
	currentMapper := self currentMetadata mappers detect: [:each | each = aMapper] ifNone: [^ aMapper].
	currentMapper version = aMapper class currentVersion ifTrue: [^ currentMapper].
	changes := self mapperChanges at: aMapper ifAbsent: [^ currentMapper].
	(changes allSatisfy: #isExcluded) ifTrue: [^ currentMapper].
	^ aMapper copy
		setCurrentVersion;
		yourself