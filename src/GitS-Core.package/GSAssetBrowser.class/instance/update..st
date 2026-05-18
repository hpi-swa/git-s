updating
update: anObject
	super update: anObject.
	anObject = #allMappers ifTrue: [self changed: #assetList].
	anObject = #materialized ifTrue: [self changed: #buildAssetPanel:].