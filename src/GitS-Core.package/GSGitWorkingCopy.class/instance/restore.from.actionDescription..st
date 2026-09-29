stash
restore: uncommittedChanges from: oldHeadCommit actionDescription: aString
	| newHeadCommit stashCommit mergedChanges |
	newHeadCommit := self headCommit.
	newHeadCommit = oldHeadCommit ifTrue: [^ self materializeChanges: uncommittedChanges].
	stashCommit := self
		commitChanges: uncommittedChanges
		onCommit: newHeadCommit
		message: 'Temporary stash commit'.
	mergedChanges := self
		changesToMergeCommit: stashCommit
		into: newHeadCommit
		withBase: oldHeadCommit.
	self pendingChanges
		changes: mergedChanges;
		windowTitle: 'Restore uncommitted changes';
		subtitle:
			('{1} was successful.\
			Now, your uncommitted changes from before starting that will be restored (merged),\
			but there are merge conflicts. Please resolve them now.\
			The ''current'' version is the one that resulted from {2}.\
			The ''incoming'' version represents your uncommitted changes from before.'
				gitSFormat: {aString capitalized. aString});
		materialize.