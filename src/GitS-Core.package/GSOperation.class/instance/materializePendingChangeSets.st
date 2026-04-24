materialization
materializePendingChangeSets
	self basicPendingChangeSetsCommit ifNil: [^ self].
	self initialImageCommit tree = self pendingChangeSetsCommit tree ifFalse: [
		self workingCopy basicMaterializeChangeSets: self pendingChangeSets].
	self
		pendingChangeSetsCommit: nil;
		initialImageCommit: nil.