ui
diffSources
	^ self sourceIndices collect: [:index |
		self diffAt: index for: self versionChange currentToResolution]