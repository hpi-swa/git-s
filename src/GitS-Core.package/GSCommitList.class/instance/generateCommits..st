generating
generateCommits: aBlock
	| stream generate |
	self generatingProcess ifNotNil: #terminate.
	self commits removeAll.
	self commitsChangedSaveScrollPositions: false.
	stream := SharedQueue2 new.
	generate := self preserveUnitOfWorkAround: [aBlock value: stream].
	self
		generatingProcess: (generate forkAt: Processor userBackgroundPriority);
		startAnimationFor: self generatingProcess;
		synchronousUpdateFrom: stream for: self generatingProcess;
		asynchronousUpdateFrom: stream for: self generatingProcess.