accessing
activeRef: aString forceChange: aBoolean
	(aBoolean not and: [self activeRef = aString]) ifTrue: [^ self].
	activeRef := aString.
	self
		deriveActiveRefTreeMemberFromActiveRef;
		changed: #activeRef;
		activeCommit: self activeRefCommit.