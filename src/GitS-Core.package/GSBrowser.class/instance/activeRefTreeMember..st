accessing
activeRefTreeMember: aRefTreeMember
	activeRefTreeMember = aRefTreeMember ifTrue: [^ self].
	activeRefTreeMember := aRefTreeMember.
	self
		revealActiveTreeMember;
		changed: #activeRefTreeMember.
	(aRefTreeMember notNil and: [aRefTreeMember isRef])
		ifTrue: [self activeRef: aRefTreeMember ref].