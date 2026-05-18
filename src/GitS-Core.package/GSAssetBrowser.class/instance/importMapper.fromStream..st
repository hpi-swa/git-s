importing
importMapper: aMapper fromStream: aStream
	| assetFile |
	assetFile := GSPresentAssetFile withMapper: aMapper fromStream: aStream.
	self activeWorkingCopy addMapper: aMapper.
	aMapper materialize: assetFile in: self activeWorkingCopy.
	self selectedMapper: aMapper.