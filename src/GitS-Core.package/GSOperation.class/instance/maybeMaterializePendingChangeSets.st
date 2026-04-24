materialization
maybeMaterializePendingChangeSets
	self deferMaterializationLevel > 0 ifTrue: [^ self].
	self materializePendingChangeSets.