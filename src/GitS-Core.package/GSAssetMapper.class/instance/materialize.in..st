changes-operations
materialize: anAssetFile in: aWorkingCopy
	(anAssetFile gitSIsMissing and: [(aWorkingCopy mappers includes: self) not])
		ifTrue: [aWorkingCopy removeMaterializedAt: self path]
		ifFalse: [aWorkingCopy materializedAt: self path put: anAssetFile].
	aWorkingCopy imageCommitChanged.