tests
testMergeConflictBase: baseBlock
checkBase: checkBaseBlock
incoming: incomingBlock
current: currentBlock
checkDialog: checkDialogBlock
checkMerged: checkMergedBlock
	self
		testMergeBase: baseBlock
		checkBase: checkBaseBlock
		incoming: incomingBlock
		current: currentBlock
		checkDialog: [
			self
				do: [self leftClick: 'Merge changes']
				suppressingMessage: 'There are conflicts. Please resolve them first. Aborting.'.
			checkDialogBlock value]
		checkMerged: checkMergedBlock.