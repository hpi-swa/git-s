git-operations
commitChanges: changeCollection
message: aString
parents: parentCollection
author: aGitStampOrNil
	| newCommit |
	newCommit := self
						commitChanges: changeCollection
						onCommit: self headCommit
						message: aString
						parents: parentCollection.
	aGitStampOrNil ifNotNil: [newCommit author: aGitStampOrNil].
	newCommit store.
	self updateHeadRefToNewCommit: newCommit.
	^ newCommit