accessing
textAt: aNumber
	self isInEditMode ifTrue: [^ (self incomingSources at: aNumber) string asText].
	^ GSTextUtilities diffFromStrings: (self versionChange collect: [:each | (self sourcesOf: each at: aNumber) string])