ui
initializeRefTree
	self
		refTree: (GSRefTree new
					workingCopy: self workingCopyOrNil;
					ref: '';
					yourself);
		updateRefTree;
		deriveActiveRefTreeMemberFromActiveRef.
	^ self refTree