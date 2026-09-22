changes-creation
changeSetFromSnapshots: aVersionChange
	| patch |
	patch := aVersionChange incoming patchRelativeToBase: aVersionChange current.
	patch isEmpty ifTrue: [^ self emptyChangeSet].
	^ GSCodeChangeSet withMapper: self patch: patch