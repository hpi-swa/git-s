listing
refs
	| workingCopy |
	workingCopy := self workingCopyOrNil ifNil: [^ #()].
	self includeAllRefs ifTrue: [^ workingCopy allReferences].
	^ (Array streamContents: [:stream |
		self includeActiveRef ifTrue: [stream nextPut: self browser activeRefOrHead].
		self includeHead ifTrue: [stream nextPut: workingCopy headRefName].
		self includeBranches ifTrue: [workingCopy branchesDo: [:each | stream nextPut: each]].
		self includeRemotes ifTrue: [workingCopy remoteRefsDo: [:each | stream nextPut: each]]])
			withoutDuplicates