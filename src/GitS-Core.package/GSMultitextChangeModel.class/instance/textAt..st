accessing
textAt: aNumber
	self isInEditMode ifTrue: [^ (self incomingSources at: aNumber) string asText].
	^ self diffAt: aNumber