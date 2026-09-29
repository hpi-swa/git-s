accessing
initializePendingChangesCommit
	self
		initialImageCommit: self workingCopy createImageCommit;
		pendingChangesCommit: self initialImageCommit.
	^ self pendingChangesCommit