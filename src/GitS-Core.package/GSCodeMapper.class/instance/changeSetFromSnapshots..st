changes-creation
changeSetFromSnapshots: aVersionChange
	| patch |
	patch := aVersionChange incoming patchRelativeToBase: aVersionChange current.
	patch isEmpty ifTrue: [^ GSEmptyChangeSet withMapper: self].
	^ GSCodeChangeSet withMapper: self patch: patch.