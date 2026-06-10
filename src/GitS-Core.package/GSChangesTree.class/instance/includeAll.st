excluding
includeAll
	self
		descendantsDo: #includeSilently;
		allNodesChanged: #isExcluded.