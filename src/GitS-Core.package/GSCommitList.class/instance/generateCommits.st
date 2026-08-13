generating
generateCommits
	self generator ifNotNil: #stop.
	self commits removeAll.
	self commitsChangedSaveScrollPositions: false.
	self
		generator: (GSBackgroundGenerator on:
			(self preserveUnitOfWorkAround: [self generateWith: self generator]));
		startAnimationFor: self generator;
		synchronousUpdateFrom: self generator;
		asynchronousUpdateFrom: self generator.