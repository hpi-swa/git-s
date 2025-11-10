data
uninstall: anEndToEndTestVersion
	self targetClass
		compiledMethodAt: anEndToEndTestVersion selector
		ifAbsent: [self assert: false description: 'Missing method to remove'];
		removeSelector: anEndToEndTestVersion selector.