stash
restore: uncommittedChangeSets from: oldHeadCommit actionDescription: aString
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
		subtitle:
			('{1} was successful.\
			Now, your uncommitted changes from before starting that will be restored (merged),\
			but there are merge conflicts. Please resolve them now.\
			The ''current'' version is the one that resulted from {2}.\
			The ''incoming'' version represents your uncommitted changes from before.'
				gitSFormat: {aString capitalized. aString});
		materialize.