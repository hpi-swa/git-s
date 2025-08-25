generating
asynchronousUpdateFrom: aSharedQueue2 for: aProcess
	| duration nextUpdate |
	self generatingProcess = aProcess ifFalse: [^ self].
	self addNewCommits: aSharedQueue2 gitSConsumeAll saveScrollPositions: true.
	aProcess isTerminated ifTrue: [^ self].
	duration := self updateIntervalFor: self commits size.
	nextUpdate := self preserveUnitOfWorkAround:
		[self asynchronousUpdateFrom: aSharedQueue2 for: aProcess].
	[duration wait. Project current addDeferredUIMessage: nextUpdate] fork.