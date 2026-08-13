updating
verifyExclusionState
	self
		assert: self isExcludedMatchesEdgeCase ==> [self reachedEdgeCase]
		description: 'Metadata mapper change did not receive some event from a change'.