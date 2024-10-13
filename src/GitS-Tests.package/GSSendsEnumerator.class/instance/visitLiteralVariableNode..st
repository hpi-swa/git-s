visiting
visitLiteralVariableNode: aNode
	super visitLiteralVariableNode: aNode.
	(self root isKindOf: MethodNode) ifTrue: [
		(self root methodClass theNonMetaClass classVarNames
			includes: aNode name asString) ifTrue: [^ self]].
	self enumerate: aNode name asSymbol.