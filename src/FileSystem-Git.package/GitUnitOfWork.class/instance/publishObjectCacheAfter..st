scope activation
publishObjectCacheAfter: aBlock
	| result |
	result := aBlock value.
	"don't use ensure: because we don't want to publish caches that are
	potentially broken via a mid-modification terminate"
	self repository updateObjectCache: objectCache.
	^ result