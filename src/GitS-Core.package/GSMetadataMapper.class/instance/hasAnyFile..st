testing
hasAnyFile: aFileSystem
	^ (self referencesIn: aFileSystem) anySatisfy: #isFile