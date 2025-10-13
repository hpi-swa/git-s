merging
atomicMergeIfUnchanged: unchangedBlock ifMerged: mergedBlock ifConflict: conflictBlock
	(self current = self incoming) ifTrue: [^ unchangedBlock value].
	(self current = self base) ifTrue: [^ mergedBlock value: self incoming].
	(self incoming = self base) ifTrue: [^ unchangedBlock value].
	^ conflictBlock value: self asConflict