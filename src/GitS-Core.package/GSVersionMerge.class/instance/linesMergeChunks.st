merging
linesMergeChunks
	^ (Diff3 new
		file0: self base;
		file1: self current;
		file2: self incoming;
		diffClass: GSTextUtilities diffClass;
		yourself) merge: true