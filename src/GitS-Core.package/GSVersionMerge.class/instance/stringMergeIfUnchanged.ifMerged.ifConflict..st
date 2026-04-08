merging
stringMergeIfUnchanged: unchangedBlock ifMerged: mergedBlock ifConflict: conflictBlock
	| lines chunks |
	lines := self collect: #lines.
	chunks := lines linesMergeChunks.
	^ (chunks allSatisfy: [:each | each key = #ok])
		ifFalse: [conflictBlock value: self asConflict]
		ifTrue: [ | mergedLines |
			mergedLines := chunks gather: #value.
			mergedLines = lines current
				ifTrue: [unchangedBlock value]
				ifFalse: [mergedBlock value: (mergedLines joinSeparatedBy: Character cr)]]