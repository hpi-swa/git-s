accessing
cachedAllSubInstances
	^ CachedAllSubInstances ifNil: [CachedAllSubInstances := WeakSet new]