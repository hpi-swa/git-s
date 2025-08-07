*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	self text ifNotEmpty: [^ super gitSPutMatchedTargetsOf: aString on: aStream].
	(aString match: (self balloonText ifNil: [^ self])) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].