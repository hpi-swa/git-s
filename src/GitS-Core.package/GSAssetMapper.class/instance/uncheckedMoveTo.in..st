moving
uncheckedMoveTo: aPath in: aWorkingCopy
	| assetFile |
	assetFile := self loadAssetFileFromImage: aWorkingCopy.
	self
		removeIn: aWorkingCopy;
		path: aPath;
		materialize: assetFile in: aWorkingCopy.
	aWorkingCopy mappersChanged.