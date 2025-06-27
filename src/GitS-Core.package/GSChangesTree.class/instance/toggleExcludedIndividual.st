excluding
toggleExcludedIndividual
	self
		recursiveChildrenDo: #basicToggleExcluded;
		allChildrenChanged: #isExcluded.