changes-creation
changeSetToMergeNames: aVersionMerge
	| versionChange |
	versionChange := aVersionMerge
		atomicMergeIfUnchanged: [^ nil]
		ifMerged: [:merged | GSChange current: aVersionMerge current incoming: merged]
		ifConflict: [:conflict | conflict].
	^ GSMetadataNameChangeSet withMapper: self versionChange: versionChange