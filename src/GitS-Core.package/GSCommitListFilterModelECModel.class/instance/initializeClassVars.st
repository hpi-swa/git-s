initialize-release
initializeClassVars
	<ignoreSends: #(classVar)>
	clazz = self modelClass ifFalse: [^ super initializeClassVars].
	classVars := self modelClass publicClassVariables asOrderedCollection collect: [:each |
		ECClassVarEntry
			contents: each
			type: #classVar].