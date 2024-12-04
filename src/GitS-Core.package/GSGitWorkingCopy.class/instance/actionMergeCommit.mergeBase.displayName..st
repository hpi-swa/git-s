actions-merging
actionMergeCommit: rightCommit mergeBase: baseCommit displayName: aString
	| headRef branch |
	headRef := self headRef.
	branch := headRef isSymbolic
				ifTrue: [GitReference shortName: headRef targetRef]
				ifFalse: ['HEAD'].
	^ (self pendingChanges
		changeSetsToMergeCommitIntoHead: rightCommit withBase: baseCommit;
		doMerge: rightCommit;
		initialMessage: ('Merge {1} into {2}' format: {aString. branch});
		windowTitle: ('Changes to merge from {1} into {2}' format: {aString. branch});
		alwaysOpenDialog;
		yourself) commit