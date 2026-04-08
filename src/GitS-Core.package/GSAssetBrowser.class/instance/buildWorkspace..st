toolbuilder
buildWorkspace: builder
	^ GSAssetWorkspace
		model: self
		mapper: self selectedMapper
		setAsset: #asset:
		getBindings: #workspaceBindings
		editTargetName: 'asset'
		buildWith: builder