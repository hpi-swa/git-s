compressing
compressed
	self children ifEmpty: [^ nil].
	^ (self compressible and: [self children size = 1])
		ifTrue: [self children first compressed]
		ifFalse: [self]