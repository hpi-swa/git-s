actions-committing
actionCommit
	^ self actionCommitWithInitialMessage: (self commitMessageDraft ifNil: [''])