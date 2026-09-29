instance creation
changesWithMapper: aMapper versionChanges: aCollection
	^ aCollection collect: [:each | self withMapper: aMapper versionChange: each]