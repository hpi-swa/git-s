enumerating
stringsOf: aCommitListFilterModel do: aBlock
	aCommitListFilterModel commit allEntriesDo: [:each |
		self stringsOfEntry: each do: aBlock].