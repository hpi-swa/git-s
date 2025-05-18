*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	self label = aString ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].