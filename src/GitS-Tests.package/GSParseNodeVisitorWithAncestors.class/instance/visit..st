visiting
visit: aParseNode
	self pushAncestor: aParseNode during: [aParseNode accept: self].