accessing
assetFileAt: aPath
	^ self workingCopy materializedAt: aPath ifAbsent: [GSMissingAssetFile withMapper: nil]