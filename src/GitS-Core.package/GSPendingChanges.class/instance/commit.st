actions
commit
	self
		dialogClass: GSChangesDialogWithMessage;
		verb: (self isMerge ifTrue: ['merge'] ifFalse: ['commit']);
		checkBlock: [self checkCanCommit];
		actionBlock: [self commitNow];
		cancelBlock: [self rememberCommitMessageDraft].
	^ self run