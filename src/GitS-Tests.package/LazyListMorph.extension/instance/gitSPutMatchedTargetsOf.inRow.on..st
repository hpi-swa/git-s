*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString inRow: aNumber on: aStream
	(self getListItem: aNumber) asString = aString ifFalse: [^ self].
	aStream nextPut: [GSEndToEndTarget
							morph: self
							localPosition: (self drawBoundsForRow: aNumber) center].