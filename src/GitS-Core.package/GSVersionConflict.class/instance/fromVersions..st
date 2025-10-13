enumerating
fromVersions: aCollection
	^ (super fromVersions: aCollection)
		isResolved: self isResolved;
		yourself