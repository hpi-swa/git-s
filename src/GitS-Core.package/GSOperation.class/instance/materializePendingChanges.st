materialization
materializePendingChanges
	self basicPendingChangesCommit ifNil: [^ self].
	self initialImageCommit tree = self pendingChangesCommit tree ifFalse: [
		self workingCopy basicMaterializeChanges: self pendingChanges].
	self
		pendingChangesCommit: nil;
		initialImageCommit: nil.