changes-creation
changeSetToMergeAssetFiles: aVersionMerge
	| versionChange |
	versionChange := (aVersionMerge collect: #assetOrNil)
		stringOrNilMergeIfUnchanged: [^ GSEmptyChangeSet withMapper: self]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: (self assetAsAssetFile: merged)]
		ifConflict: [:conflict | conflict collect: [:each | self assetAsAssetFile: each]].
	^ GSAssetChangeSet withMapper: self versionChange: versionChange