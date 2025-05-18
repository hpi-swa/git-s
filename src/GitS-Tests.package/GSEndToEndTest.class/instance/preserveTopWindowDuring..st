private
preserveTopWindowDuring: aBlock
	| original |
	original := SystemWindow topWindow.
	aBlock ensure: [original ifNotNil: #beKeyWindow].