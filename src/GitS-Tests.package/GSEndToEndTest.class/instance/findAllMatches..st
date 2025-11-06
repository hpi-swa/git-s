finding
findAllMatches: aStringOrText
	| matcher |
	matcher := aStringOrText isText
		ifTrue: [[:label | label isText and: [label = aStringOrText] and: [label runs = aStringOrText runs]]]
		ifFalse: [[:label | aStringOrText match: label]].
	^ OrderedCollection streamContents: [:stream |
		self world allMorphsDo: [:each | each gitSPutMatchedTargetsOf: matcher on: stream]]