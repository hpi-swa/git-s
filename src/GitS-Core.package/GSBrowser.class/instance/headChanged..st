updating
headChanged: aGitReference
	self activeRef: (aGitReference isSymbolic
						ifTrue: [aGitReference targetRef]
						ifFalse: [aGitReference name]).