changes-creation
changeSetFromMetadatas: aVersionChange mappersChangeSet: aChangeSet
	| nameChangeSet |
	nameChangeSet := self changeSetFromNames: (aVersionChange collect: #name).
	^ self
		changeSetFromCurrentMetadata: aVersionChange current
		propertyChangeSets: {nameChangeSet. aChangeSet}