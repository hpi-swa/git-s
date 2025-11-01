ui-manager
chooseFromValues: aCollection label: aBlock title: aString
	^ self
		chooseFrom: (aCollection collect: aBlock)
		values: aCollection
		title: aString