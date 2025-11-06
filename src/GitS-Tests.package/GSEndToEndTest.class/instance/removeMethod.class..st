data
removeMethod: selectorSymbol class: classSymbol
	(Environment current classNamed: classSymbol)
		compiledMethodAt: selectorSymbol
		ifAbsent: [self assert: false description: 'Missing method to remove'];
		removeSelector: selectorSymbol.