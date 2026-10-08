building suites
addToSuite: aTestSuite fromMethods: selectorCollection
	self classesToBeTested do: [:class |
		selectorCollection do: [:selector |
			aTestSuite addTest: (self selector: selector class: class)]].
	^ aTestSuite