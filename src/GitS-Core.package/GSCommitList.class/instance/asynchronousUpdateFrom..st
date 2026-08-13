generating
asynchronousUpdateFrom: aGenerator
	| duration nextUpdate |
	aGenerator == self generator ifFalse: [^ self].
	self addNewCommits: aGenerator consumeAll saveScrollPositions: true.
	aGenerator isStopped ifTrue: [^ self].
	duration := self updateIntervalFor: self commits size.
	nextUpdate := self preserveUnitOfWorkAround:
		[self asynchronousUpdateFrom: aGenerator].
	[duration wait. Project current addDeferredUIMessage: nextUpdate] fork.