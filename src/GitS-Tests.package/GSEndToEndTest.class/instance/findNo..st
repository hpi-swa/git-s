finding
findNo: anObject
	anObject isString ifTrue: [^ self findNoString: anObject].
	self error: 'Unknown target'.