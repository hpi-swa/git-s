stash
stashUncommittedChangesDuring: aBlock description: aString
	| oldHeadCommit uncommittedChangeSets |
	oldHeadCommit := self headCommit.
	uncommittedChangeSets := self changeSetsFromCommitToImage: oldHeadCommit.
	^ self
		stash: uncommittedChangeSets
		from: oldHeadCommit
		during: aBlock
		description: aString