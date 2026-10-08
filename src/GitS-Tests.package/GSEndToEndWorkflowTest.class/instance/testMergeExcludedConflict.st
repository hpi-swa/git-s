tests
testMergeExcludedConflict
	self
		testMergeBase: [self install: self version1A]
		checkBase: [self check: self version1A]
		incoming: [self install: self version1C]
		current: [self install: self version1B]
		checkDialog: [
			self
				findInDialog: self conflict1ModifyBModifyC;
				exclude: self version1;
				find: ('( {1} )' format: {self version1 label})]
		checkMerged: [
			self
				check: self version1B;
				do: [self leftClick: 'Commit']
				suppressingMessage: 'No changes to commit.'].