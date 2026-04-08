changes-creation
changeSetToMergeMetadatas: aVersionMerge mappersChangeSet: aChangeSet
	| nameChangeSet |
	nameChangeSet := self changeSetToMergeNames: (aVersionMerge collect: #name).
	^ self
		changeSetFromCurrentMetadata: aVersionMerge current
		propertyChangeSets: {nameChangeSet. aChangeSet}