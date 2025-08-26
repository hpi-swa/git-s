excluding
toggleExcludedIndividual
	self
		recursiveChildrenDo: #toggleExcludedSilently;
		allNodesChanged: #isExcluded.