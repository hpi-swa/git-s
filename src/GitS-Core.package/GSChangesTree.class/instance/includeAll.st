excluding
includeAll
	self
		recursiveChildrenDo: #includeSilently;
		allNodesChanged: #isExcluded.