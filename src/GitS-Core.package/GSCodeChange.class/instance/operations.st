accessing
operations
	self isExcluded ifTrue: [^ #()].
	^ {self operation ifNil: [^ #()]}