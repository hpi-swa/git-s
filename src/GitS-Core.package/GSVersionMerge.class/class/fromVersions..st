instance creation
fromVersions: aCollection
	^ (super fromVersions: aCollection)
		base: (aCollection at: self numberOfVersions);
		yourself