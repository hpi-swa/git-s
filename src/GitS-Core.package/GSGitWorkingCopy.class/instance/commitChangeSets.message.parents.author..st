git-operations
commitChangeSets: aCollection
message: aString
parents: anotherCollection
author: aGitStampOrNil
	| newCommit |
	newCommit := self
						commitChangeSets: aCollection
						onCommit: self headCommit
						message: aString
						parents: anotherCollection.
	aGitStampOrNil ifNotNil: [newCommit author: aGitStampOrNil].
	newCommit store.
	self updateHeadRefToNewCommit: newCommit.
	^ newCommit