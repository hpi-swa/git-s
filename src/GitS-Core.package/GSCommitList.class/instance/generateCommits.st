generating
generateCommits
	self generator ifNotNil: #stop.
	self commits removeAll.
	self commitsChangedSaveScrollPositions: false.
	self
		generator: (GSBackgroundGenerator on: [:generator |
			self withUnitOfWork: [self generateWith: generator]]);
		startAnimationFor: self generator;
		synchronousUpdateFrom: self generator;
		asynchronousUpdateFrom: self generator.