ui-manager
chooseOptionFromLabeledBlocks: aCollection title: aString
	^ (self wrapUIManagerForNonNilAnswer: [:manager |
		manager
			chooseOptionFromLabeledValues: (OrderedDictionary newFrom: aCollection)
			title: aString]) value