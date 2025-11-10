data
check: anEndToEndTestVersion
	| method |
	method := self targetClass
		compiledMethodAt: anEndToEndTestVersion selector
		ifAbsent: [self assert: false description: 'Expected to find method'].
	self
		assert: anEndToEndTestVersion source
		equals: method getSource asString
		description: 'Expected to match source exactly'.
	self
		assert: anEndToEndTestVersion category
		equals: method methodReference category
		description: 'Expected to match category exactly'.