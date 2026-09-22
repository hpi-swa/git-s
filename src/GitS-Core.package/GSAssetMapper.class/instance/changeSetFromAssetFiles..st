changes-creation
changeSetFromAssetFiles: aVersionChange
	aVersionChange isEmpty ifTrue: [^ self emptyChangeSet].
	^ GSAssetChangeSet withMapper: self versionChange: aVersionChange