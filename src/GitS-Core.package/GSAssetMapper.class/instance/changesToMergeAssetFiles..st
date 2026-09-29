changes-creation
changesToMergeAssetFiles: aVersionMerge
	| versionChange |
	versionChange := aVersionMerge
		atomicMergeIfUnchanged: [^ #()]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: merged]
		ifConflict: [:conflict | conflict].
	^ {self changeClass withMapper: self versionChange: versionChange}