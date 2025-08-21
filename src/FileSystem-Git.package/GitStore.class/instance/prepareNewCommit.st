git plumbing
prepareNewCommit
	| now commit parents |
	modManager processChanges.
	now := GitStamp now.
	commit := GitOwningCommit new
		tree: modManager rootTree;
		author: now;
		committer: now;
		repository: repository;
		yourself.
	parents := OrderedCollection new.
	revision ifNotNil: [ parents add: revision hexHash ].
	parents addAll: additionalParents.
	commit parents: parents.
	^ commit