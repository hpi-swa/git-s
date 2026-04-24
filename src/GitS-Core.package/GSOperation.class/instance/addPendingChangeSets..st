materialization
addPendingChangeSets: aCollection
	self pendingChangeSetsCommit:
		(self workingCopy
			commitChangeSets: aCollection
			onCommit: self pendingChangeSetsCommit
			message: 'Pending changes to be loaded into the image'
			parents: #()).