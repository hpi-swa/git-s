changes-creation
changesToMergeNames: aVersionMerge
	| versionChange |
	versionChange := aVersionMerge
		atomicMergeIfUnchanged: [^ #()]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: merged]
		ifConflict: [:conflict | conflict].
	^ {GSMetadataNameChange withMapper: self versionChange: versionChange}