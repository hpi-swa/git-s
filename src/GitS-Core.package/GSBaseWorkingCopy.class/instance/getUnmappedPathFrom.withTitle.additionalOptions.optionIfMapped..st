paths
getUnmappedPathFrom: aPath withTitle: aString additionalOptions: aCollection optionIfMapped: aBlock
	| mapper answer |
	mapper := (self mapperThatMaps: aPath) ifNil: [^ aPath].
	answer := aBlock cull: mapper.
	answer = #ask ifTrue: [
		answer := self
			requestOptionForUnmappedPath: aPath
			mapper: mapper
			additionalOptions: aCollection].
	^ answer caseOf: {
		[#different] -> [self
							requestUnmappedPathWithTitle: aString
							initialAnswer: aPath
							additionalOptions: aCollection].
		[#overwrite] -> [
			mapper canBeRemovedAtAll
				ifTrue: [self removeMapper: mapper. aPath]
				ifFalse: [self
							getUnmappedPathFrom: aPath
							withTitle: aString
							additionalOptions: aCollection]].
	} otherwise: [answer]