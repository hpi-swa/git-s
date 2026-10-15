generating
generateWith: aGenerator
	GitHistoryWalker new
		startingFromAll: self scope commits
		do: [:commit |
			(self
				handleBackgroundErrorDuring: [self block value: commit]
				for: aGenerator
				ifError: [false]) ifTrue: [aGenerator produced: commit]].