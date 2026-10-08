comparing
equalsIncludingMapperVersions: anObject
	^ self equals: anObject withMappersConversion: [:collection |
		(PluggableSet hashBlock: #hashIncludingVersion equalBlock: #equalsIncludingVersion:)
			addAll: collection;
			yourself]