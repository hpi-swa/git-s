excluding
includeAll
	self
		recursiveChildrenDo: #basicInclude;
		allChildrenChanged: #isExcluded.