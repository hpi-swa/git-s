checking
checkHasIncludedChanges
	(self isMerge or: [self hasIncludedChanges]) ifTrue: [^ true].
	GSPendingChangesEmpty signal: self nothingToDoMessage, ' Include at least one change.'.
	^ false