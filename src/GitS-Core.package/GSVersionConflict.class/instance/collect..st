enumerating
collect: aBlock
	| conflict |
	conflict := super collect: aBlock.
	self isResolved ifTrue: [conflict resolveTo: (aBlock value: self resolution)].
	^ conflict