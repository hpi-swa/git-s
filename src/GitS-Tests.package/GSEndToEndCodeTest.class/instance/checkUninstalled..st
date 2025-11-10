data
checkUninstalled: anEndToEndTestVersion
	self targetClass
		compiledMethodAt: anEndToEndTestVersion selector
		ifAbsent: [^ self].
	self assert: false description: 'Expected to not find method'.