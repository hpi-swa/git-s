accessing
activeRef: aString
	self activeRefTreeMember: (aString ifNotNil: [self refTree ensure: aString]).
	activeRef = aString ifTrue: [^ self].
	activeRef := aString.
	self activeRefCommit ifNotNil: [:commit | self activeCommit: commit].
	self
		changed: #activeRef;
		changed: #commitList.