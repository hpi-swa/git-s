*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	(aString match: self label) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].