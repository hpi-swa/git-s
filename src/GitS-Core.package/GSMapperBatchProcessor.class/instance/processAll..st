processing
processAll: aCollection
	self label displayProgressFrom: 0 to: aCollection size during: [:bar |
		self
			step: 0;
			remainingGroupsFrom: aCollection;
			progressBarBlock: bar;
			process].