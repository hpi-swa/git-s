metadata-creation
metadataToWrite
	| metadata |
	metadata := self currentMetadata copy.
	self propertyChangeSets do: [:each |
		metadata perform: each property asSimpleSetter with: each valueToWrite].
	metadata setCurrentVersion.
	^ metadata withoutUntrackedMappers