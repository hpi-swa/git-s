migrations
turnAsset: anObject toAssetFileWith: aMapper
	anObject ifNil: [^ GSMissingAssetFile withMapper: aMapper].
	(anObject isKindOf: GSAssetFile) ifTrue: [^ anObject].
	(self isOldAnimationAsset: anObject) ifTrue: [
		^ GSPresentAssetFile withMapper: aMapper contents: (anObject instVarNamed: 'gif')].
	(aMapper isValidAsset: anObject) ifTrue: [ | asset |
		asset := aMapper transformAsset: anObject ifFail: [
			^ self turningAsset: anObject toAssetFileFailedWith: aMapper].
		^ aMapper assetAsAssetFile: asset].
	^ self turningAsset: anObject toAssetFileFailedWith: aMapper