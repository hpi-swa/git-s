ui-manager
chooseOptionFromLabeledValues: aCollection title: aString
	^ self
		chooseOptionFromLabeledBlocks:
			(aCollection collect: [:each | each key -> [each value]])
		title: aString