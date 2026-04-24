accessing
initializePendingChangeSetsCommit
	self
		initialImageCommit: self workingCopy createImageCommit;
		pendingChangeSetsCommit: self initialImageCommit.
	^ self pendingChangeSetsCommit