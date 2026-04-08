changes-creation
changeSetFromCurrentMetadata: aMetadata propertyChangeSets: aCollection
	^ GSMetadataChangeSet
		withMapper: self
		currentMetadata: aMetadata
		propertyChangeSets: (aCollection reject: #isNil)