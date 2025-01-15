accessing
activeRef: aString forceChange: aBoolean
	| noChange |
	noChange := aBoolean not and: [self activeRef = aString].
	activeRef := aString.
	self activeRefTreeMember: (aString ifNotNil: [self refTree ensure: aString]).
	noChange ifTrue: [^ self].
	self
		activeCommit: self activeRefCommit;
		changed: #activeRef;
		changed: #commitList.