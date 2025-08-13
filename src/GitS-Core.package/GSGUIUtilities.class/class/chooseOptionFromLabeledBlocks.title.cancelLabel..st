ui-manager
chooseOptionFromLabeledBlocks: aCollection title: titleString cancelLabel: cancelString
	^ self
		chooseOptionFromLabeledBlocks:
			(cancelString ifNil: [aCollection] ifNotNil: [aCollection copyWith: cancelString -> nil])
		title: titleString