accessing
assetFileVersionChange
	^ self versionChange collect: [:each | each ifNotNil: #version]