changes-operations
materialize: anAssetFile in: aWorkingCopy
	(anAssetFile gitSIsMissing and: [aWorkingCopy mappers noneSatisfy: [:each | each equalsWithoutIsTracked: self]])
		ifTrue: [aWorkingCopy removeMaterializedAt: self path]
		ifFalse: [aWorkingCopy materializedAt: self path put: anAssetFile].
	aWorkingCopy imageCommitChanged.