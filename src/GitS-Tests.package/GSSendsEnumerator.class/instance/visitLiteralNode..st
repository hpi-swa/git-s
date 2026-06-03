visiting
visitLiteralNode: aNode
	super visitLiteralNode: aNode.
	self enumerateLiteral: aNode literalValue.