data
checkNoMethod: selectorSymbol class: classSymbol
	(Environment current classNamed: classSymbol)
		compiledMethodAt: selectorSymbol
		ifAbsent: [^ self].
	self assert: false description: 'Expected to not find method'.