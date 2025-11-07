accessing
entries
	^ entries ifNil: [self entries: self loadEntries. entries]