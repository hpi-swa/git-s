commit-list
asynchronousUpdateCommitListFrom: aSharedQueue2 for: aProcess
	| duration nextUpdate |
	self commitListProcess = aProcess ifFalse: [^ self].
	aSharedQueue2 gitSConsumeAll ifNotEmpty: [:newCommits |
		self commitList addAll: newCommits.
		self
			findActiveCommitIdentityIn: newCommits;
			commitListChangedSaveScrollPositions: true].
	aProcess isTerminated ifTrue: [^ self].
	duration := self commitListUpdateIntervalFor: self commitList size.
	nextUpdate := self preserveUnitOfWorkAround:
		[self asynchronousUpdateCommitListFrom: aSharedQueue2 for: aProcess].
	[duration wait. Project current addDeferredUIMessage: nextUpdate] fork.