*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	(aString match: self text asString) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].