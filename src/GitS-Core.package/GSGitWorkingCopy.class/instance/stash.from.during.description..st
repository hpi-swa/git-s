stash
stash: uncommmittedChanges from: oldHeadCommit during: aBlock description: aString
	uncommmittedChanges ifEmpty: [^ aBlock value].
	self materializeCommit: oldHeadCommit.
	^ (Promise gitSFulfillWith: aBlock)
		then: [:result |
			self
				restore: uncommmittedChanges
				from: oldHeadCommit
				actionDescription: aString.
			result]
		ifRejected: [:error |
			self
				materializeCommit: oldHeadCommit;
				materializeChanges: uncommmittedChanges.
			error pass]