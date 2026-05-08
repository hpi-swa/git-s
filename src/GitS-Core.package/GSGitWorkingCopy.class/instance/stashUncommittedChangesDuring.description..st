stash
stashUncommittedChangesDuring: aBlock description: aString
	| oldHeadCommit uncommittedChangeSets |
	oldHeadCommit := self headCommitOrCancel.
	uncommittedChangeSets := self changeSetsFromCommitToImage: oldHeadCommit.
	^ self
		stash: uncommittedChangeSets
		from: oldHeadCommit
		during: aBlock
		description: aString