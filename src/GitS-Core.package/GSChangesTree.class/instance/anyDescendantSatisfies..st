accessing
anyDescendantSatisfies: aBlock
	self descendantsDo: [:each | (aBlock value: each) ifTrue: [^ true]].
	^ false