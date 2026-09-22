changes-creation
changeSetFromNames: aVersionChange
	aVersionChange isNoop ifTrue: [^ nil].
	^ GSMetadataNameChangeSet withMapper: self versionChange: aVersionChange