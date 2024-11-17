merging
stringMergeLeft: leftString right: rightString base: baseString ifUnchanged: unchangedBlock ifMerged: mergedBlock ifConflict: conflictBlock
	| leftLines chunks |
	leftLines := leftString lines.
	chunks := (Diff3 new
		file0: baseString lines;
		file1: leftLines;
		file2: rightString lines;
		diffClass: GSTextUtilities diffClass;
		yourself) merge: true.
	^ (chunks allSatisfy: [:each | each key = #ok])
		ifFalse: [conflictBlock value: (GSMergeConflict left: leftString right: rightString base: baseString)]
		ifTrue: [ | mergedLines |
			mergedLines := chunks gather: #value.
			mergedLines = leftLines
				ifTrue: [unchangedBlock value]
				ifFalse: [mergedBlock value: (mergedLines joinSeparatedBy: Character cr)]]