ui-manager
chooseOptionFromLabeledValues: aCollection title: titleString cancelLabel: cancelString
	^ self
		chooseOptionFromLabeledBlocks:
			(aCollection collect: [:each | each key -> [each value]])
		title: titleString
		cancelLabel: cancelString