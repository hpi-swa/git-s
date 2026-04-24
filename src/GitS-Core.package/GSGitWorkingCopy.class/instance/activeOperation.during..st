operation
activeOperation: anOperation during: aBlock
	| previous |
	previous := self activeOperation.
	self activeOperation: anOperation.
	^ aBlock ensure: [self activeOperation: previous]