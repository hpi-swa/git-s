actions
actionRemove
	| mapper |
	mapper := self selectedMapperOrCancel.
	GSGUIUtilities confirmOrCancel:
		('Really remove asset {1}?' format: {mapper name printString}).
	self selectedMapper: nil.
	self activeWorkingCopy removeMapper: mapper.
	mapper removeIn: self activeWorkingCopy.