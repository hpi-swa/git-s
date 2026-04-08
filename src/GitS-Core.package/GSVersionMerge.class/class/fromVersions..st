instance creation
fromVersions: aCollection
	^ (super fromVersions: aCollection)
		base: (aCollection at: super numberOfVersions + 1);
		yourself