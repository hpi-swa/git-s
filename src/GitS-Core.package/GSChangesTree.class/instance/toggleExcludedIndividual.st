excluding
toggleExcludedIndividual
	self
		descendantsDo: #toggleExcludedSilently;
		allNodesChanged: #isExcluded.