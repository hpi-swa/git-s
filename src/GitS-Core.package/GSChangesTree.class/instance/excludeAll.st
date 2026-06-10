excluding
excludeAll
	self
		descendantsDo: #excludeSilently;
		allNodesChanged: #isExcluded.