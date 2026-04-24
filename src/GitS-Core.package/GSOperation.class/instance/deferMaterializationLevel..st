accessing
deferMaterializationLevel: anInteger
	deferMaterializationLevel := anInteger.
	self maybeMaterializePendingChangeSets.