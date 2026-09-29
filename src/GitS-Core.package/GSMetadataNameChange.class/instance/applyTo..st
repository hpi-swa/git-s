applying
applyTo: aMetadataBuilder
	self isExcluded ifTrue: [^ self].
	aMetadataBuilder metadataToWrite name: self nameToWrite