merging
convertMergeChunkConflict: aDiff3MergeConflict
	^ GSVersionConflict
		current: aDiff3MergeConflict left
		incoming: aDiff3MergeConflict right
		base: aDiff3MergeConflict original