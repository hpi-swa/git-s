compressing
compressed
	| children |
	children := self children.
	children ifEmpty: [^ nil].
	^ (self compressible and: [children size = 1])
		ifTrue: [children first compressed]
		ifFalse: [self]