accessing
deferMaterializationLevel: anInteger
	deferMaterializationLevel := anInteger.
	self maybeMaterializePendingChanges.