materialization
maybeMaterializePendingChangeSetsAfter: aBlock
	| result |
	result := self deferMaterializationDuring: aBlock.
	self maybeMaterializePendingChangeSets.
	^ result