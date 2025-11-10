finding
findNo: anObject in: aMorph
	(self isMatchable: anObject) ifTrue: [^ self findNoMatch: anObject in: aMorph].
	self error: 'Unknown target'.