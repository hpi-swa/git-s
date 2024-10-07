collisions
collidingMappersAfterSerializeInto: aFileSystem
	| mappers seen |
	mappers := self newMappersAfterSerializeInto: aFileSystem.
	seen := Dictionary new.
	^ Array streamContents: [:stream |
		mappers do: [:mapperA | | pathPatternsA |
			pathPatternsA := mapperA mappedPathPatterns.
			seen keysAndValuesDo: [:mapperB :pathPatternsB |
				(pathPatternsA anySatisfy: [:pathPatternA |
					pathPatternsB anySatisfy: [:pathPatternB |
						pathPatternA collidesWith: pathPatternB]])
					ifTrue: [stream nextPut: {mapperA. mapperB}]].
			seen at: mapperA put: pathPatternsA]]