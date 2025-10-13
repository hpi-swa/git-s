workspace
workspaceBindings
	^ self versionChange versionsDictionary collect: [:each | each ifNotNil: #asset]