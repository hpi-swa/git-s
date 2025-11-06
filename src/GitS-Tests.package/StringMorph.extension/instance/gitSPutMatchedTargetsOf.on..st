*GitS-Tests-matching
gitSPutMatchedTargetsOf: aBlock on: aStream
	(aBlock value: self gitSAsText) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget morph: self].