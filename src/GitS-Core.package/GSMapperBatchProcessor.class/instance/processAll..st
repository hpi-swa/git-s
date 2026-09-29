processing
processAll: aCollection
	self label displayProgressFrom: 0 to: aCollection size during: [:bar |
		self
			step: 0;
			remaining: aCollection copy;
			progressBarBlock: bar;
			process].