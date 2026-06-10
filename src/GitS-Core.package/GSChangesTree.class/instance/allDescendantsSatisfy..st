accessing
allDescendantsSatisfy: aBlock
	self descendantsDo: [:each | (aBlock value: each) ifFalse: [^ false]].
	^ true