stash
stash: uncommmittedChangeSets from: oldHeadCommit during: aBlock
	(GSChangeSet allEmpty: uncommmittedChangeSets) ifTrue: [^ aBlock value].
	self materializeCommit: oldHeadCommit.
	^ (Promise gitSFulfillWith: aBlock)
		then: [:result |
			self restore: uncommmittedChangeSets from: oldHeadCommit.
			result]
		ifRejected: [:error |
			self
				materializeCommit: oldHeadCommit;
				materializeChangeSets: uncommmittedChangeSets.
			error pass]