accessing
loadEntries
	self logfile exists ifFalse: [^ #()].
	^ (((self logfile contents lines
		collect: #withBlanksTrimmed)
		reject: #isEmpty)
		collect: [:each | GitReflogEntry fromString: each])
		asOrderedCollection