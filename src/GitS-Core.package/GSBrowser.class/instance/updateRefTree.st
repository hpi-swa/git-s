ui
updateRefTree
	self activeWorkingCopy
		ifNil: [self refTree children removeAll]
		ifNotNil: [:workingCopy | workingCopy updateRefTree: self refTree].
	self changed: #refTreeRoots.