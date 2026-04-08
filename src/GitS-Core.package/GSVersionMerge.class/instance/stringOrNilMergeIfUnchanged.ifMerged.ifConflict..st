merging
stringOrNilMergeIfUnchanged: unchangedBlock ifMerged: mergedBlock ifConflict: conflictBlock
	^ self
		atomicMergeIfUnchanged: unchangedBlock
		ifMerged: mergedBlock
		ifConflict: [:conflict |
			(self versions allSatisfy: #isString)
				ifFalse: [^ conflictBlock value: conflict].
			self
				stringMergeIfUnchanged: unchangedBlock
				ifMerged: mergedBlock
				ifConflict: conflictBlock]