excluding
excludeAll
	self
		recursiveChildrenDo: #excludeSilently;
		allNodesChanged: #isExcluded.