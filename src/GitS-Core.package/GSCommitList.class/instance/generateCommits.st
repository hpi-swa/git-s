generating
generateCommits
	| workingCopy |
	self generator ifNotNil: #stop.
	self commits removeAll.
	self commitsChangedSaveScrollPositions: false.
	workingCopy := self workingCopyOrNil ifNil: [^ self].
	self
		generator: (GSBackgroundGenerator on: [:backgroundGenerator |
			workingCopy withUnitOfWork: [self generateWith: backgroundGenerator]]);
		startAnimationFor: self generator;
		synchronousUpdateFrom: self generator;
		asynchronousUpdateFrom: self generator.