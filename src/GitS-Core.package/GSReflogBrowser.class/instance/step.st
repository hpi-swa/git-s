ui
step
	GSPreferences keepRelativeTimeStampsUpToDate ifFalse: [^ self].
	GSUpdatingList
		saveScrollPositionsOf: self
		listSelector: #entryColumns
		during: [self changed: #entryColumns; changed: #activeEntryIndex].