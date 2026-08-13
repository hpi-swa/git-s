accessing
updateObjectCache: anObjectCache
	anObjectCache misses > objectCache misses ifFalse: [^ self].
	objectCache := anObjectCache.