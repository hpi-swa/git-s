materialization - defer
deferMaterializationDuring: aBlock
	self increaseDeferMaterializationLevel.
	^ aBlock ensure: [self decreaseDeferMaterializationLevel]