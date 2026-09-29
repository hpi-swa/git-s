changes-creation
changesToMergeAssetFiles: aVersionMerge
	| versionChange |
	versionChange := (aVersionMerge collect: #assetOrNil)
		stringOrNilMergeIfUnchanged: [^ #()]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: (self assetAsAssetFile: merged)]
		ifConflict: [:conflict | conflict collect: [:each | self assetAsAssetFile: each]].
	^ {self changeClass withMapper: self versionChange: versionChange}