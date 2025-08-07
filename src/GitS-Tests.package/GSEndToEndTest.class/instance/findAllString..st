finding
findAllString: aString
	^ OrderedCollection streamContents: [:stream |
		self world allMorphsDo: [:each | each gitSPutMatchedTargetsOf: aString on: stream]]