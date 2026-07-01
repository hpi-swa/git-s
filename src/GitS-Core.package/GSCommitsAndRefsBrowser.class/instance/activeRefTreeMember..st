accessing
activeRefTreeMember: aRefTreeMember
	activeRefTreeMember = aRefTreeMember ifTrue: [^ self].
	activeRefTreeMember := aRefTreeMember.
	self revealActiveTreeMember.
	aRefTreeMember
		ifNil: [self activeRef: nil]
		ifNotNil: [:member | member isRef ifTrue: [self activeRef: member ref]].