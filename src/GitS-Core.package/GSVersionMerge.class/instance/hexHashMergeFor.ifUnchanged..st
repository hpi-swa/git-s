merging
hexHashMergeFor: aMapper ifUnchanged: aBlock
	(self hexHashesFor: aMapper)
		atomicMergeIfUnchanged: [aBlock value: (GSEmptyChangeSet withMapper: aMapper)]
		ifMerged: [:merged |]
		ifConflict: [:conflict |].