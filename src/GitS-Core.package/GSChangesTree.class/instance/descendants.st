accessing
descendants
	^ Array streamContents: [:stream |
		self descendantsDo: [:each | stream nextPut: each]]