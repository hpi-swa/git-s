private receiving
readAcknowledgements
	self readLines: [:line | | split |
		line = 'NAK' ifTrue: [^ self].
		split := line splitBy: String space.
		(split size = 2 "no ready, continue or common" and: [split first = 'ACK']) ifTrue: [^ self]].