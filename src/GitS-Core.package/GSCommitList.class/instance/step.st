ui
step
	GSPreferences keepRelativeTimeStampsUpToDate ifFalse: [^ self].
	self commitsChangedSaveScrollPositions: true.