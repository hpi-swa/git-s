ui-manager
chooseOptionFromLabeledBlocks: aCollection title: aString
	^ (self wrapUIManagerForNonNilAnswer: [:manager |
		manager
			chooseOptionFromLabeledValues: (Dictionary newFrom: aCollection)
			title: aString]) value