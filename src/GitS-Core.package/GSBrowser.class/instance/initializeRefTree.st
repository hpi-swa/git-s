ui
initializeRefTree
	self
		refTree: (GSRefTree new
					workingCopy: self activeWorkingCopy;
					ref: '';
					yourself);
		updateRefTree;
		deriveActiveRefTreeMemberFromActiveRef.
	^ self refTree