changes-creation
changesToMergeCommitIntoHead: incomingCommit withBase: baseCommit
	^ self changesToMergeCommit: incomingCommit into: self headCommit withBase: baseCommit