generating
generateWith: aGenerator
	GitHistoryWalker new
		startingFromAll: self scope commits
		do: [:commit | (self block value: commit) ifTrue: [aGenerator produced: commit]].