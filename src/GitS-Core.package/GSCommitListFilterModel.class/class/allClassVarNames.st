Autocompletion
allClassVarNames
	(self isAutocompletionContext: thisContext) ifTrue: [^ self publicClassVariables].
	^ super allClassVarNames