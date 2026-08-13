accessing
listenToChangedMapperChangeEvents: aChange
	aChange when: #isExcludedChangedSilently: send: #updateIsExcludedSilently: to: self.