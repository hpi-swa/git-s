accessing
arguments
	^ '{1} {2}{3}' format: {
		self editMessage ifTrue: ['-c'] ifFalse: ['-C'].
		super arguments.
		self oneLineMessage ifNotNil: [' # ', self oneLineMessage] ifNil: ['']}