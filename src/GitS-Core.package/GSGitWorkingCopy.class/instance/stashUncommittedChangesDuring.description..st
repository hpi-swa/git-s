stash
stashUncommittedChangesDuring: aBlock description: aString
	| oldHeadCommit uncommittedChanges |
	oldHeadCommit := self headCommit.
	uncommittedChanges := self changesFromCommitToImage: oldHeadCommit.
	^ self
		stash: uncommittedChanges
		from: oldHeadCommit
		during: aBlock
		description: aString