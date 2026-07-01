listing
refs
	self workingCopyOrNil ifNil: [^ #()].
	self includeAllRefs ifTrue: [^ self workingCopyOrNil allReferences].
	^ (Array streamContents: [:stream |
		self includeActiveRef ifTrue: [stream nextPut: self browser activeRefOrHead].
		self includeHead ifTrue: [stream nextPut: self workingCopyOrNil headRefName].
		self includeBranches ifTrue: [self workingCopyOrNil branchesDo: [:each | stream nextPut: each]].
		self includeRemotes ifTrue: [self workingCopyOrNil remoteRefsDo: [:each | stream nextPut: each]]])
			withoutDuplicates