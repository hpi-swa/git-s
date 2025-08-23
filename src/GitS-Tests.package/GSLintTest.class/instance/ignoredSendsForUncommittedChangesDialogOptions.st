ignored-sends
ignoredSendsForUncommittedChangesDialogOptions
	^ #(saveHere moveOver) collect: [:each | GSGitWorkingCopy>>#stashUncommittedChangesWhileSwitching: -> each]