accessing
markNotYetGenerated
	self hasExpression ifFalse: [^ self].
	self changed: #editString with: self expression.