materialization
maybeMaterializePendingChangesAfter: aBlock
	| result |
	result := self deferMaterializationDuring: aBlock.
	self maybeMaterializePendingChanges.
	^ result