changes-creation
changeSetFromAssetFile: anAssetFile toAssetFile: anotherAssetFile
	(anAssetFile = anotherAssetFile) ifTrue: [
		^ GSEmptyChangeSet
			withMapper: self
			isRemoval: (self isMissing: anotherAssetFile)].
	^ self changeSetClass
		withMapper: self
		from: anAssetFile
		to: anotherAssetFile