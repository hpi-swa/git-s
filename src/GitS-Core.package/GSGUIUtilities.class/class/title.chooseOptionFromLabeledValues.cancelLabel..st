ui-manager
title: titleString chooseOptionFromLabeledValues: aCollection cancelLabel: cancelString
	^ self
		title: titleString
		chooseOptionFromLabeledBlocks:
			(aCollection collect: [:each | each key -> [each value]])
		cancelLabel: cancelString