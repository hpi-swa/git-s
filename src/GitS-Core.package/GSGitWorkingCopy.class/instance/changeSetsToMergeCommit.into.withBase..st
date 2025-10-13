changes-creation
changeSetsToMergeCommit: incomingCommit into: currentCommit withBase: baseCommit
	^ self changeSetsToMergeCommits:
		(GSVersionMerge
			current: currentCommit
			incoming: incomingCommit
			base: baseCommit)