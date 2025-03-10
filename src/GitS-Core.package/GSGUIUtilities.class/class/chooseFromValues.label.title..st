ui-manager
chooseFromValues: aCollection label: aBlock title: aString
	^ self
		chooseFromLabeledValues: (Dictionary newFrom:
			(aCollection collect: [:each | (aBlock value: each) -> each]))
		title: aString