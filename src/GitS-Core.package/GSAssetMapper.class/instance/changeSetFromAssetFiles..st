changes-creation
changeSetFromAssetFiles: aVersionChange
	aVersionChange isNoop ifTrue: [^ self emptyChangeSet].
	^ GSAssetChangeSet withMapper: self versionChange: aVersionChange