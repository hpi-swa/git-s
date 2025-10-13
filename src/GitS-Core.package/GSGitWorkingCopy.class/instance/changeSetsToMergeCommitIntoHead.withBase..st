changes-creation
changeSetsToMergeCommitIntoHead: incomingCommit withBase: baseCommit
	^ self changeSetsToMergeCommit: incomingCommit into: self headCommit withBase: baseCommit