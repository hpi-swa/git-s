toolbuilder
buildWith: builder shrinkWrap: aBoolean
	^ self versionChange
		buildAtomicWith: builder
		buildBlock: [:assetFile | self buildAssetFile: assetFile with: builder]
		workspace: (self buildWorkspace: builder)
		shrinkWrap: aBoolean