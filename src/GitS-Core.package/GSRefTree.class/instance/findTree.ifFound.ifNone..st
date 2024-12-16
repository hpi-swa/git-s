adding
findTree: aString ifFound: foundBlock ifNone: noneBlock
	^ self children
		detect: [:each | each isTree and: [each ref = aString]]
		ifFound: foundBlock
		ifNone: noneBlock