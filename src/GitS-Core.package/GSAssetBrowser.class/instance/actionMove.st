actions
actionMove
	| mapper newPath |
	mapper := self selectedMapperOrCancel.
	newPath := (self activeWorkingCopy
					requestUnmappedPathWithTitle:
						('New path for asset {1}:'
							format: {mapper printDescriptionStringWithoutPath printString})
					initialAnswer: (GSPathUtilities asString: mapper path)).
	mapper moveTo: newPath in: self activeWorkingCopy.
	self changed: #selectedAsset. "path changed"