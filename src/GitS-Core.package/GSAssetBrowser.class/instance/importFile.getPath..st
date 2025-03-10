importing
importFile: aReference getPath: aBlock
	| mapper path |
	self activeWorkingCopyOrCancel.
	mapper := self chooseCompatibleMapper: aReference.
	path := aBlock value.
	path = #skip ifTrue: [^ self].
	mapper path: path.
	self importMapper: mapper fromStream: aReference readStream.