commit-list
generateCommitList: aBlock
	| stream generate |
	self commitListProcess ifNotNil: #terminate.
	self commitList removeAll.
	self commitListChangedSaveScrollPositions: false.
	stream := SharedQueue2 new.
	generate := self preserveUnitOfWorkAround: [aBlock value: stream].
	self
		commitListProcess: (generate forkAt: Processor userBackgroundPriority);
		synchronousUpdateCommitListFrom: stream for: self commitListProcess;
		asynchronousUpdateCommitListFrom: stream for: self commitListProcess.