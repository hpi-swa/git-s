*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	self text asString = aString ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].