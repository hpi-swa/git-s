updating
update: anObject
	super update: anObject.
	anObject = #allMappers ifTrue: [
		self
			changed: #assetTreeRoots;
			changed: #selectedAssetName;
			changed: #toggleTrackedLabel].
	anObject = #materialized ifTrue: [self changed: #buildAssetPanel:].