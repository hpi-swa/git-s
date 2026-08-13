generating
generateCommits
	| workingCopy |
	self generator ifNotNil: #stop.
	self commits removeAll.
	self commitsChangedSaveScrollPositions: false.
	workingCopy := self workingCopyOrNil ifNil: [^ self].
	self
		generator: (GSBackgroundGenerator on: [:generator |
			workingCopy withUnitOfWork: [self generateWith: generator]]);
		startAnimationFor: self generator;
		synchronousUpdateFrom: self generator;
		asynchronousUpdateFrom: self generator.