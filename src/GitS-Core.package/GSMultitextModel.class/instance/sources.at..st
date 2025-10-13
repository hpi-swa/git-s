accessing
sources: aCollectionOrNil at: aNumber
	^ aCollectionOrNil
		ifNotNil: [aCollectionOrNil at: aNumber]
		ifNil: [GSMultitextSource new
				string: '';
				help: '';
				yourself]