toolbuilder
buildWith: builder
	^ self versionChange
		buildAtomicWith: builder
		buildBlock: [:assetFile | self buildAssetFile: assetFile with: builder]
		workspace: (self buildWorkspace: builder)