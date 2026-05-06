filesystem
referencesIn: aFileSystem
	^ (self fixedLegacyReferencesIn: aFileSystem) copyWith: (self metadataReferenceIn: aFileSystem)