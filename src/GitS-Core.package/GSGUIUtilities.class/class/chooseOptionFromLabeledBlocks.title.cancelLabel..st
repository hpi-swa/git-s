ui-manager
chooseOptionFromLabeledBlocks: aCollection title: titleString cancelLabel: cancelString
	^ self
		chooseOptionFromLabeledBlocks: (aCollection copyWith: cancelString -> nil)
		title: titleString