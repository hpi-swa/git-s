compressing
uncompressedAncestor
	^ (self parent notNil and: [self willCompress])
		ifTrue: [self parent uncompressedAncestor]
		ifFalse: [self]