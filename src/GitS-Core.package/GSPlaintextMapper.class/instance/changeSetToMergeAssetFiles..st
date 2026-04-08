changes-creation
changeSetToMergeAssetFiles: aVersionMerge
	| versionChange |
	versionChange := (aVersionMerge collect: [:each | each ifNotNil: #asset])
		stringOrNilMergeIfUnchanged: [^ GSEmptyChangeSet withMapper: self]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: (self assetAsAssetFile: (self transformAsset: merged))]
		ifConflict: [:conflict | conflict collect: [:each | self assetAsAssetFile: each]].
	^ GSAssetChangeSet withMapper: self versionChange: versionChange