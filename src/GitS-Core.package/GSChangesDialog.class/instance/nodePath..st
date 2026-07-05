accessing
nodePath: aNode
	^ (aNode ancestorChainIn: self changesTree)
		collect: [:each | (self nodeLabel: each) asString]