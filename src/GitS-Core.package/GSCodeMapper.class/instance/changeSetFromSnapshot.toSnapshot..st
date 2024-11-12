changes-creation
changeSetFromSnapshot: aSnapshot  toSnapshot: anotherSnapshot
	| patch |
	patch := anotherSnapshot patchRelativeToBase: aSnapshot.
	patch isEmpty ifTrue: [^ GSEmptyChangeSet
								withMapper: self
								isRemoval: (self isEmpty: anotherSnapshot)].
	^ GSCodeChangeSet withMapper: self from: aSnapshot patch: patch.