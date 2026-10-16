*GitS-Tests-EndToEnd-matching
gitSPutMatchedTargetsOf: aBlock on: aStream
	(aBlock value: self label) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].