*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	self contents = aString ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].