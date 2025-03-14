*GitS-Core-FSStream-compatibility
int16: anInteger
	"copied from PositionableStream"
	"Store the given signed, 16-bit integer on this (binary) stream."

	| n |
	(anInteger < -16r8000) | (anInteger >= 16r8000)
		ifTrue: [self error: 'outside 16-bit integer range'].

	anInteger < 0
		ifTrue: [n := 16r10000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
