updating
update: anObject
	super update: anObject.
	anObject = #allMappers ifTrue: [self changed: #assetTreeRoots].
	anObject = #materialized ifTrue: [self changed: #buildAssetPanel:].