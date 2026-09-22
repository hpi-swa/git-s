merging
hexHashMergeFor: aMapper ifUnchanged: aBlock
	(self hexHashesFor: aMapper)
		atomicMergeIfUnchanged: [^ aBlock value]
		ifMerged: [:merged |]
		ifConflict: [:conflict |].