listing
refs
	self activeWorkingCopy ifNil: [^ #()].
	self includeAllRefs ifTrue: [^ self activeWorkingCopy allReferences].
	^ (Array streamContents: [:stream |
		self includeActiveRef ifTrue: [stream nextPut: self browser activeRefOrHead].
		self includeHead ifTrue: [stream nextPut: self activeWorkingCopy headRefName].
		self includeBranches ifTrue: [self activeWorkingCopy branchesDo: [:each | stream nextPut: each]].
		self includeRemotes ifTrue: [self activeWorkingCopy remoteRefsDo: [:each | stream nextPut: each]]])
			withoutDuplicates