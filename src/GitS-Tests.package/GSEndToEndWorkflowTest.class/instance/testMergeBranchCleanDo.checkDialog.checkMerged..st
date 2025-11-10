tests
testMergeBranchCleanDo: actionBlock checkDialog: checkDialogBlock checkMerged: checkMergedBlock
	self
		testMergeBase: [self install: self version1A]
		checkBase: [self check: self version1A; checkUninstalled: self version2]
		incoming: actionBlock
		current: [self install: self version3A]
		checkDialog: [self do: checkDialogBlock; findNo: self version3A label]
		checkMerged: [self do: checkMergedBlock; check: self version3A].