updating
systemChanged
	self batchSystemChangesLevel > 0 ifTrue: [
		self hasBatchedSystemChanges: true.
		^ self].
	self imageCommitChanged.
	self hasBatchedSystemChanges: false.