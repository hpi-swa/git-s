changes-creation
changesFromNames: aVersionChange builder: aMetadataBuilder
	aVersionChange isNoop ifTrue: [^ #()].
	^ {GSMetadataNameChange
		withMapper: self
		versionChange: aVersionChange
		builder: aMetadataBuilder}