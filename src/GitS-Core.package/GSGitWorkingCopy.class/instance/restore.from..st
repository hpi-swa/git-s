stash
restore: uncommittedChangeSets from: oldHeadCommit
	| newHeadCommit stashCommit mergedChangeSets |
	newHeadCommit := self headCommit.
	newHeadCommit = oldHeadCommit ifTrue: [^ self materializeChangeSets: uncommittedChangeSets].
	stashCommit := self
		commitChangeSets: uncommittedChangeSets
		onCommit: newHeadCommit
		message: 'Temporary stash commit'.
	mergedChangeSets := self
		changeSetsToMergeCommit: stashCommit
		into: newHeadCommit
		withBase: oldHeadCommit.
	self pendingChanges
		changeSets: mergedChangeSets;
		windowTitle: 'Restore uncommitted changes';
		materialize.