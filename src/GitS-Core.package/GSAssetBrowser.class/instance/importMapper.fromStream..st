importing
importMapper: aMapper fromStream: aStream
	| addedMapper assetFile |
	addedMapper := self activeWorkingCopy addMapper: aMapper.
	assetFile := GSPresentAssetFile withMapper: addedMapper fromStream: aStream.
	addedMapper materialize: assetFile in: self activeWorkingCopy.
	self selectedMapper: addedMapper.