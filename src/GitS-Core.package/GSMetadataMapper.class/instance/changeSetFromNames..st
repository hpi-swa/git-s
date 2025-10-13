changes-creation
changeSetFromNames: aVersionChange
	aVersionChange isEmpty ifTrue: [^ nil].
	^ GSMetadataNameChangeSet withMapper: self versionChange: aVersionChange