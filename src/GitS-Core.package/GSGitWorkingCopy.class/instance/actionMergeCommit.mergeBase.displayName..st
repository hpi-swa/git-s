actions-merging
actionMergeCommit: incomingCommit mergeBase: baseCommit displayName: aString
	| headRef branch |
	headRef := self headRef.
	branch := headRef isSymbolic
				ifTrue: [GitReference shortName: headRef targetRef]
				ifFalse: ['HEAD'].
	^ (self pendingChanges
		changeSetsToMergeCommitIntoHead: incomingCommit withBase: baseCommit;
		doMerge: incomingCommit;
		initialMessage: ('Merge {1} into {2}' format: {aString. branch});
		windowTitle: ('Changes to merge from {1} into {2}' format: {aString. branch});
		alwaysOpenDialog;
		yourself) commit