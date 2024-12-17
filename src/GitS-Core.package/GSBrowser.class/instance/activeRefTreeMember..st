accessing
activeRefTreeMember: aRefTreeMember
	activeRefTreeMember = aRefTreeMember ifTrue: [^ self].
	activeRefTreeMember := aRefTreeMember.
	aRefTreeMember ifNotNil: [
		self changed: {#openPath}, (aRefTreeMember withAllParents allButFirst collect: #label)].
	self changed: #activeRefTreeMember.
	(aRefTreeMember notNil and: [aRefTreeMember isRef])
		ifTrue: [self activeRef: aRefTreeMember ref].