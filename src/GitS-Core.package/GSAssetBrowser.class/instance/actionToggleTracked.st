actions
actionToggleTracked
	| mapper |
	mapper := self selectedMapperOrCancel.
	mapper isTracked
		ifTrue: [self activeWorkingCopy removeMapper: mapper]
		ifFalse: [self activeWorkingCopy addMapper: mapper].