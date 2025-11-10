finding
findAllMatches: anObject in: aMorph
	| matcher |
	matcher := self matcherFor: anObject.
	^ OrderedCollection streamContents: [:stream |
		aMorph allMorphsDo: [:each | each gitSPutMatchedTargetsOf: matcher on: stream]]