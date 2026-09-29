materialization
addPendingChanges: aCollection
	self pendingChangesCommit:
		(self workingCopy
			commitChanges: aCollection
			onCommit: self pendingChangesCommit
			message: 'Pending changes to be loaded into the image'
			parents: #()).