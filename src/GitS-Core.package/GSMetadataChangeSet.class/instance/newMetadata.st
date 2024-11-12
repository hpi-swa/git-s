metadata-creation
newMetadata
	| metadata |
	metadata := self oldMetadata copy.
	self propertyChangeSets do: [:each |
		metadata perform: each property asSimpleSetter with: each newValue].
	metadata setCurrentVersion.
	^ metadata withoutUntrackedMappers