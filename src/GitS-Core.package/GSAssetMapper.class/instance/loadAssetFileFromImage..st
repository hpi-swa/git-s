asset-creation
loadAssetFileFromImage: aWorkingCopy
	^ aWorkingCopy
		materializedAt: self path
		ifAbsent: [GSMissingAssetFile withMapper: self]