git-operations
commitChangeSets: aCollection
message: aString
parents: anotherCollection
	| newCommit |
	newCommit := self
						commitChangeSets: aCollection
						onCommit: self headCommit
						message: aString
						parents: anotherCollection.
	self updateHeadRefToNewCommit: newCommit.
	^ newCommit