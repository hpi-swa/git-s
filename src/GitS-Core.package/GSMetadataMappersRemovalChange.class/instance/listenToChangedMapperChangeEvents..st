accessing
listenToChangedMapperChangeEvents: aChange
	super listenToChangedMapperChangeEvents: aChange.
	aChange when: #canMapperBeRemoved send: #updateIsExcluded to: self.