changes-operations
materialize: anAssetFile in: aWorkingCopy
	aWorkingCopy materializedAt: self path put: anAssetFile.
	self changed: #imageCommit.