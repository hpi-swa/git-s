changes-creation
changeSetFromAssetFiles: aVersionChange
	aVersionChange isEmpty ifTrue: [^ GSEmptyChangeSet withMapper: self].
	^ GSAssetChangeSet withMapper: self versionChange: aVersionChange