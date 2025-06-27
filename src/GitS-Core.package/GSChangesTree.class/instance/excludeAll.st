excluding
excludeAll
	self
		recursiveChildrenDo: #basicExclude;
		allChildrenChanged: #isExcluded.