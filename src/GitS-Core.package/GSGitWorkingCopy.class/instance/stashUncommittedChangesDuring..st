stash
stashUncommittedChangesDuring: aBlock
	| oldHeadCommit uncommittedChangeSets |
	oldHeadCommit := self headCommitOrCancel.
	uncommittedChangeSets := self changeSetsFromCommitToImage: oldHeadCommit.
	^ self stash: uncommittedChangeSets from: oldHeadCommit during: aBlock