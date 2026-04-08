instance creation
fromVersions: aCollection
	^ (super fromVersions: aCollection)
		resolution: (aCollection at: super numberOfVersions + 1);
		yourself