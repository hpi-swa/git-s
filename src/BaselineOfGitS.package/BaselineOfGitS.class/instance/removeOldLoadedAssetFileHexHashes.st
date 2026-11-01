migrations
removeOldLoadedAssetFileHexHashes
	<postLoadMigration: 22>
	GSLoadedAssetFileStorage allSubInstancesDo: [:each | each instVarNamed: 'hexHash' put: nil].