changes-creation
changesToMergeNames: aVersionMerge builder: aMetadataBuilder
	| versionChange |
	versionChange := aVersionMerge
		atomicMergeIfUnchanged: [^ #()]
		ifMerged: [:merged | GSVersionChange current: aVersionMerge current incoming: merged]
		ifConflict: [:conflict | conflict].
	^ {GSMetadataNameChange
		withMapper: self
		versionChange: versionChange
		builder: aMetadataBuilder}