wrapping
wrapVersion: anObject for: aChange
	^ anObject ifNotNil: [self withChange: aChange version: anObject]