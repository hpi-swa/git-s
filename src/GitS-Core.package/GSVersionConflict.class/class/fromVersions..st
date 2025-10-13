instance creation
fromVersions: aCollection
	^ (super fromVersions: aCollection)
		resolution: (aCollection at: self numberOfVersions);
		yourself