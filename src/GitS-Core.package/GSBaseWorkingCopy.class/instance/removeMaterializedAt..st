materialized
removeMaterializedAt: aPath
	self materialized removeKey: aPath ifAbsent: [].
	self materializedChanged.