testing
isAbstractMethod: aCompiledMethod
	self sendsOf: aCompiledMethod do: [:selector |
		selector = #subclassResponsibility ifTrue: [^ true]].
	^ false