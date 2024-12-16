ui
initializeRefTree
	self
		refTree: (GSRefTree new
					workingCopy: self activeWorkingCopy;
					label: 'root';
					ref: '';
					yourself);
		updateRefTree.
	^ self refTree