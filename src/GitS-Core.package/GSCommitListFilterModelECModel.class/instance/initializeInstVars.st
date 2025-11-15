initialize-release
initializeInstVars
	<ignoreSends: #(instVar self)>
	clazz = self modelClass ifFalse: [^ super initializeInstVars].
	instVars := self modelClass publicInstanceVariables asOrderedCollection collect: [:each |
		ECInstVarEntry
			contents: each
			type: #instVar].
	instVars add: (ECSelfEntry 
			contents: 'self'
			type: #self).
	"no super"