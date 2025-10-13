accessing
assetFileToWrite: anAssetFile
	^ self versionToWrite: (GSPlaintextMultitextVersion wrapVersion: anAssetFile for: self)