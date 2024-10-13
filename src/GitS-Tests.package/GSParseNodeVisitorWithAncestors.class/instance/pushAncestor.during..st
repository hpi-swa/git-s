visiting
pushAncestor: aParseNode during: aBlock
	self ancestors addLast: aParseNode.
	aBlock ensure: [self ancestors removeLast].