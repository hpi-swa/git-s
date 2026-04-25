generating
addNewCommits: aCollection saveScrollPositions: aBoolean
	aCollection ifEmpty: [^ self].
	self commits addAll: aCollection.
	self commitsChangedSaveScrollPositions: aBoolean.