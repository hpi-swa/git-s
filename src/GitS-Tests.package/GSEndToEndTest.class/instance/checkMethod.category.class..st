data
checkMethod: sourceString category: categoryString class: aSymbol
	| class methodNode method |
	class := Environment current classNamed: aSymbol.
	methodNode := Parser new parse: sourceString class: class.
	method := class
		compiledMethodAt: methodNode selector
		ifAbsent: [self assert: false description: 'Expected to find method'].
	self
		assert: sourceString
		equals: method getSource asString
		description: 'Expected to match source exactly'.
	self
		assert: categoryString
		equals: method methodReference category
		description: 'Expected to match category exactly'.