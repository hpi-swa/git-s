accessing
activeRef: aString
	activeRef := aString.
	self activeRefCommit ifNotNil: [:commit | self activeCommit: commit].
	self
		activeRefTreeMember: (aString ifNotNil: [self refTree ensure: aString]);
		changed: #activeRef;
		changed: #commitList.