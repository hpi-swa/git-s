workspace
workspaceBindings
	^ self assetFileVersionChange versionsDictionary collect: [:each | each ifNotNil: #asset]