data
findChangeInDialog: aDictionary
	| expressions allVersions |
	self leftClick: aDictionary values anyOne label.
	expressions := (aDictionary values
		collect: [:each | each expression] as: Set)
		collect: [:each | each -> ((self findAll: (self expressionToFindable: each)) collect: #morph)] as: Dictionary. "Missing can be present multiple times"
	allVersions := expressions values flatten.
	aDictionary keysAndValuesDo: [:label :value | | position closest expected |
		position := (self find: label) morph referencePositionInWorld.
		closest := allVersions detectMin: [:each | each referencePositionInWorld dist: position].
		expected := expressions at: value expression.
		self
			assert: (expected includes: closest)
			description: ('Expected version is not the closest one to label {1}' format: {label printString})].