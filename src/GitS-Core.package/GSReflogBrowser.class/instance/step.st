ui
step
	GSUpdatingList
		saveScrollPositionsOf: self
		listSelector: #entryColumns
		during: [self changed: #entryColumns].