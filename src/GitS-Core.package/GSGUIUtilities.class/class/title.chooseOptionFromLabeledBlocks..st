ui-manager
title: aString chooseOptionFromLabeledBlocks: aCollection
	^ (self wrapUIManagerForNonNilAnswer: [:manager |
		manager
			chooseOptionFromLabeledValues: (OrderedDictionary newFrom: aCollection)
			title: aString]) value