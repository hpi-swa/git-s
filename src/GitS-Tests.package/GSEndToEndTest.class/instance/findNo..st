finding
findNo: anObject
	(anObject isString or: [anObject isText]) ifTrue: [^ self findNoMatch: anObject].
	self error: 'Unknown target'.