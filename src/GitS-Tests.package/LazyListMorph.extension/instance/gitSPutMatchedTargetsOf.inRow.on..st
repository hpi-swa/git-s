*GitS-Tests-matching
gitSPutMatchedTargetsOf: aBlock inRow: aNumber on: aStream
	(aBlock value: (self getListItem: aNumber) asStringOrText) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget
							morph: self
							localPosition: (self drawBoundsForRow: aNumber) center].