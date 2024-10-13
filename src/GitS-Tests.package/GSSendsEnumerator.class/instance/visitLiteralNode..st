visiting
visitLiteralNode: aNode
	super visitLiteralNode: aNode.
	aNode literalValue isSymbol ifFalse: [^ self].
	self enumerate: aNode literalValue.