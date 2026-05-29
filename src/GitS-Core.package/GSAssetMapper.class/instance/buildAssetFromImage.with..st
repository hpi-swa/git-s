toolbuilder
buildAssetFromImage: aWorkingCopy with: builder
	^ self
		buildAssetFile: (self loadAssetFileFromImage: aWorkingCopy)
		with: builder