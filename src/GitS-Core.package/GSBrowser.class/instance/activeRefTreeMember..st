accessing
activeRefTreeMember: aRefTreeMember
	activeRefTreeMember = aRefTreeMember ifTrue: [^ self].
	activeRefTreeMember := aRefTreeMember.
	self revealActiveTreeMember.
	(aRefTreeMember notNil and: [aRefTreeMember isRef])
		ifTrue: [self activeRef: aRefTreeMember ref].