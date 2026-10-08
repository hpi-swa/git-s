tests
testMergeExcludedAddition
	self
		testMergeBase: [self install: self version1A]
		checkBase: [self check: self version1A; checkUninstalled: self version2]
		incoming: [self install: self version1B; install: self version2A]
		current: [self install: self version3A]
		checkDialog: [
			self
				findInDialog: self version2A;
				exclude: self version2A;
				find: ('( {1} )' format: {self version2A label})]
		checkMerged: [
			self
				check: self version1B;
				checkUninstalled: self version2;
				check: self version3A;
				do: [self leftClick: 'Commit']
				suppressingMessage: 'No changes to commit.'].