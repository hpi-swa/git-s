actions
commit
	self
		dialogClass: GSChangesDialogWithMessage;
		verb: (self isMerge ifTrue: ['merge'] ifFalse: ['commit']);
		checkBlock: [self checkCanCommit];
		actionBlock: [self commitNow].
	^ self run