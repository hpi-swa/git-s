actions-materializing
ensureHeadCommitMaterializedTo: aString
	| changes |
	changes := self changesFromImageToHeadCommit ifEmpty: [^ Promise unit: nil].
	GSGUIUtilities confirmOrCancel:
		('To {1}, you cannot have uncommitted changes, but you have some.\
		Do you want to DISCARD your uncommitted changes?' gitSFormat: {aString}).
	^ (self pendingChanges
		changes: changes;
		windowTitle: ('Discard uncommitted changes in order to {1}' format: {aString});
		alwaysOpenDialog;
		yourself) materialize