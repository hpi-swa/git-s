merging
stringMergeIfConflict: conflictBlock
	^ self
		stringMergeIfUnchanged: [self current]
		ifMerged: [:merged | merged]
		ifConflict: conflictBlock