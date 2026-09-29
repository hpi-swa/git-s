ui-manager
title: aString chooseFromValues: aCollection label: aBlock
	^ self
		title: aString
		chooseFrom: (aCollection collect: aBlock)
		values: aCollection