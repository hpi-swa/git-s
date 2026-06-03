workspace
workspaceBindings
	^ self assetFileVersionChange versionsDictionary collect: [:each |
		"resolution might be nil"
		each ifNotNil: #assetOrNil]