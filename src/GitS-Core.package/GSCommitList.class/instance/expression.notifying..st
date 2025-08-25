accessing
expression: aStringOrText notifying: requestor
	self
		basicExpression: aStringOrText;
		changed: #expression;
		markNotYetGenerated;
		block: (self compileNotifying: requestor).