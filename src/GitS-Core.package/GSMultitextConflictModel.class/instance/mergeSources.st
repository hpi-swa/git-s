merging
mergeSources
	^ self sourceIndices collect: [:index |
		(self isSourceTimeStamp: index)
			ifTrue: ['']
			ifFalse: [self mergeSources: (self versionChange collect: [:each |
						(self sources: (self sourcesOf: each) at: index) ifNotNil: #string])]]