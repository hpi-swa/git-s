Autocompletion
allInstVarNames
	(self isAutocompletionContext: thisContext) ifTrue: [^ self publicInstanceVariables].
	^ super allInstVarNames