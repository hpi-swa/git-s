actions-materializing
ensureHeadCommitMaterializedTo: aString
	| changeSets |
	changeSets := self changeSetsFromImageToHeadCommit.
	(GSChangeSet allEmpty: changeSets) ifTrue: [^ Promise unit: nil].
	GSGUIUtilities confirmOrCancel:
		('To {1}, you cannot have uncommitted changes, but you have some.', String cr,
		'Do you want to DISCARD your uncommitted changes?'
			format: {aString}).
	^ (self pendingChanges
		changeSets: changeSets;
		windowTitle: ('Discard uncommitted changes in order to {1}' format: {aString});
		alwaysOpenDialog;
		yourself) materialize