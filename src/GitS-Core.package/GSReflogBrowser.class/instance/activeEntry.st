accessing
activeEntry
	self activeEntryIndex = 0 ifTrue: [^ nil].
	^ self entries at: self activeEntryIndex