finding
findAll: anObject in: aMorph
	^ (self findAllMatches: anObject in: aMorph) collect: #value