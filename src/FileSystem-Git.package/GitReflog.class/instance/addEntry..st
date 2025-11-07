appending
addEntry: aReflogEntry
	logfile parent ensureDirectory.
	logfile writeStreamDo: [:stream |
		stream
			setToEnd;
			print: aReflogEntry;
			lf].
	self entries addLast: aReflogEntry.