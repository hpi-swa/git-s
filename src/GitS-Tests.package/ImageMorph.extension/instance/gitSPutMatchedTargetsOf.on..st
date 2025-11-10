*GitS-Tests-matching
gitSPutMatchedTargetsOf: aBlock on: aStream
	(aBlock value: self image) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].