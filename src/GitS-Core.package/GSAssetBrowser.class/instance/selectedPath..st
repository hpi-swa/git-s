accessing
selectedPath: aPath
	selectedPath := aPath.
	self
		changed: #selectedPath;
		changed: #selectedAssetName;
		changed: #buildAssetPanel:.