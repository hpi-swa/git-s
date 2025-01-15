ui
initializeRefTree
	self
		refTree: (GSRefTree new
					workingCopy: self activeWorkingCopy;
					ref: '';
					yourself);
		updateRefTree.
	^ self refTree