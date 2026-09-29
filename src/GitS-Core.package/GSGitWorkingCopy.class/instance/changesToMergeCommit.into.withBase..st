changes-creation
changesToMergeCommit: incomingCommit into: currentCommit withBase: baseCommit
	^ self changesToMergeCommits:
		(GSVersionMerge
			current: currentCommit
			incoming: incomingCommit
			base: baseCommit)