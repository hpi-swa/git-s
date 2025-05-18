*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	self text ifNotEmpty: [^ super gitSPutMatchedTargetsOf: aString on: aStream].
	self balloonText = aString ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].