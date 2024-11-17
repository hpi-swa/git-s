testing
isRemoval
	^ self mapper isEmpty: (MCPatcher apply: self patch to: self from)