metadata-creation
metadataToWrite
	| metadata |
	metadata := self currentMetadata copy.
	self propertyChangeSets do: [:each | each writeValueTo: metadata].
	metadata setCurrentVersion.
	^ metadata withoutUntrackedMappers