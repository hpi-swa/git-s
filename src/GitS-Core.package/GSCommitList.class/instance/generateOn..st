generating
generateOn: aStream
	GitHistoryWalker new
		startingFromAll: self scope commits
		do: [:commit | (self block value: commit) ifTrue: [aStream nextPut: commit]].