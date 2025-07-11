initialization
updateString
	| commitTimeStamp now |
	now := self roundedToSeconds: TimeStamp now.
	commitTimeStamp := self roundedToSeconds: self item committer timeStamp.
	self string: (({
		self formatTimeStamp: commitTimeStamp now: now.
		self item author name.
		(self decorationsFor: self item), (self item message lineNumber: 1).
	} collect: #withBlanksTrimmed) joinSeparatedBy: Character tab).
	self
		updateWhen: [:futureTimeStamp | self formatTimeStamp: commitTimeStamp now: futureTimeStamp]
		changesStartingAt: now;
		changed: #label.