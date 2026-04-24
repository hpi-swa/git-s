changes-creation
changeSetToMergeNames: aVersionMerge
	| versionChange |
	versionChange := aVersionMerge
		atomicMergeIfUnchanged: [^ nil]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: merged]
		ifConflict: [:conflict | conflict].
	^ GSMetadataNameChangeSet withMapper: self versionChange: versionChange