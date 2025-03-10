actions
actionRemove
	| mapper |
	mapper := self selectedMapperOrCancel.
	GSGUIUtilities confirmOrCancel:
		('Really remove asset {1}?' format: {mapper name printString}).
	mapper removeIn: self activeWorkingCopy.
	self activeWorkingCopy removeMapper: mapper.
	self selectedMapper: nil.