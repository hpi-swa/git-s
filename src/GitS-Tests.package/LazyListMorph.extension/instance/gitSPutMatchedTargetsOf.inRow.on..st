*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString inRow: aNumber on: aStream
	(aString match: (self getListItem: aNumber) asString) ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget
							morph: self
							localPosition: (self drawBoundsForRow: aNumber) center].