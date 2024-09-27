merging
mergeMetadata: rightMetadata into: leftMetadata withBase: baseMetadata mappersChangeSet: aChangeSet
	| nameChangeSet |
	nameChangeSet := self
		mergeName: rightMetadata name
		into: leftMetadata name
		withBase: baseMetadata name.
	^ self
		metadataChangeSetFromOldMetadata: leftMetadata
		propertyChangeSets: {nameChangeSet. aChangeSet}