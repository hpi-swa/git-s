toolbuilder
buildAssetTree: builder
	^ builder pluggableTreeSpec new
		model: self operationStarter;
		roots: #assetTreeRoots;
		getChildren: #assetTreeChildrenOf:;
		getSelected: #selectedPath;
		setSelected: #selectedPath:;
		label: #assetPathLabelFor:;
		yourself