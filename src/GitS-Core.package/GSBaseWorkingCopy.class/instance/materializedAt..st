materialized
materializedAt: aPath
	^ self materialized at: aPath ifAbsent: [nil]