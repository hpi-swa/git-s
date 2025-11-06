*GitS-Tests-matching
gitSPutMatchedTargetsOf: aBlock on: aStream
	self text ifNotEmpty: [^ super gitSPutMatchedTargetsOf: aBlock on: aStream].
	(aBlock value: (self balloonText ifNil: [^ self])) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].