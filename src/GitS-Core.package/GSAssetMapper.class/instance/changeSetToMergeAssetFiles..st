changes-creation
changeSetToMergeAssetFiles: aVersionMerge
	| versionChange |
	versionChange := aVersionMerge
		atomicMergeIfUnchanged: [^ GSEmptyChangeSet withMapper: self]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: merged]
		ifConflict: [:conflict | conflict].
	^ GSAssetChangeSet withMapper: self versionChange: versionChange