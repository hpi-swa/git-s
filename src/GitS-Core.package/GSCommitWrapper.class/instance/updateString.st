updating
updateString
	| commitTimeStamp now |
	now := self roundedToSeconds: TimeStamp now.
	commitTimeStamp := self roundedToSeconds: self commit author timeStamp.
	self string: (({
		self formatTimeStamp: commitTimeStamp now: now.
		self commit author name.
		self decorations, (self commit message lineNumber: 1).
	} collect: #withBlanksTrimmed) joinSeparatedBy: Character tab).
	self
		updateWhen: [:futureTimeStamp | self formatTimeStamp: commitTimeStamp now: futureTimeStamp]
		changesBetween: now
		"could be larger to catch changes further into the future;
		instead try to not spawn too many processes by keeping this reasonably small"
		and: now + 2 weeks.