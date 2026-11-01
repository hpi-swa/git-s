importing
maybeMaterializeHead
	self headCommit ifNil: [^ self].
	[self actionMaterializeHead] on: GSPendingChangesEmpty do: [].