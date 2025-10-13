accessing
bumpMapperVersionIfNecessary: aMapper
	| currentMapper changeSet |
	currentMapper := self currentMappers detect: [:each | each = aMapper] ifNone: [^ aMapper].
	currentMapper version = aMapper class currentVersion ifTrue: [^ currentMapper].
	changeSet := self mapperChangeSets at: aMapper ifAbsent: [^ currentMapper].
	changeSet isEmpty ifTrue: [^ currentMapper].
	^ aMapper copy
		setCurrentVersion;
		yourself