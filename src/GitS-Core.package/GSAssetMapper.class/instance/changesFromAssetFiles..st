changes-creation
changesFromAssetFiles: aVersionChange
	aVersionChange isNoop ifTrue: [^ #()].
	^ {self changeClass withMapper: self versionChange: aVersionChange}