materialization
maybeMaterializePendingChanges
	self deferMaterializationLevel > 0 ifTrue: [^ self].
	self materializePendingChanges.