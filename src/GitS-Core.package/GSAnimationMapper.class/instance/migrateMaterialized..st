migrations
migrateMaterialized: anObject
	(self isObsoleteSquotAnimation: anObject) ifTrue: [^ self obsoleteSquotAnimationAsAssetFile: anObject].
	^ super migrateMaterialized: anObject