tests
testNoAbstractMethodsInConcreteClasses
	| found |
	found := self findAbstractMethodsInConcreteClasses.
	self
		assert: found isEmpty
		description: ('Found methods on non-abstract classes that call subclassResponsibility: {1}' format: {found}).