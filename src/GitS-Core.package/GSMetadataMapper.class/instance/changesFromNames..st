changes-creation
changesFromNames: aVersionChange
	aVersionChange isNoop ifTrue: [^ #()].
	^ {GSMetadataNameChange withMapper: self versionChange: aVersionChange}