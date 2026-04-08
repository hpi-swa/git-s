ui
diffSources
	^ self sourceIndices collect: [:index |
		GSTextUtilities diffFromStrings: (self versionChange currentToResolution collect: [:each |
			(self sourcesOf: each at: index) string])]