ui-manager
title: titleString chooseOptionFromLabeledBlocks: aCollection cancelLabel: cancelString
	^ self
		title: titleString
		chooseOptionFromLabeledBlocks:
			(cancelString ifNil: [aCollection] ifNotNil: [aCollection copyWith: cancelString -> nil])