changes-operations
materializeChangeSets: aCollection
	GSGUIUtilities displayStatus: 'Loading changes' during: [ | remaining |
		remaining := aCollection.
		GSChangeSet withAllSubclassesDo: [:each |
			remaining := each batchMaterialize: remaining in: self].
		remaining
			do: [:each | each materializeIn: self]
			displayingProgress: [:each | 'From {1}' format: {each mapper}]].