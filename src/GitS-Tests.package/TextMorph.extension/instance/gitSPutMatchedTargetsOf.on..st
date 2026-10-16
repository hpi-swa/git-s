*GitS-Tests-EndToEnd-matching
gitSPutMatchedTargetsOf: aBlock on: aStream
	(aBlock value: self text) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].