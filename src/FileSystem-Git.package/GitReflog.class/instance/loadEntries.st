accessing
loadEntries
	^ (((self logfile contents lines
		collect: #withBlanksTrimmed)
		reject: #isEmpty)
		collect: [:each | GitReflogEntry fromString: each])
		asOrderedCollection