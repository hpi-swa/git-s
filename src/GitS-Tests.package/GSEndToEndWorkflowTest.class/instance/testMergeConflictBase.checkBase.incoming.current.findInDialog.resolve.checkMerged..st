tests
testMergeConflictBase: baseBlock
checkBase: checkBaseBlock
incoming: incomingBlock
current: currentBlock
findInDialog: findInDialogBlock
resolve: resolveBlock
checkMerged: checkMergedBlock
	self
		testMergeBase: baseBlock
		checkBase: checkBaseBlock
		incoming: incomingBlock
		current: currentBlock
		checkDialog: [
			self
				do: [self leftClick: 'Merge changes']
				suppressingMessage: 'There are conflicts. Please resolve them first. Aborting.';
				do: findInDialogBlock;
				find: 'Conflict (' asText, 'unresolved' asText allBold, ')' asText;
				do: resolveBlock;
				find: 'Conflict (resolved)' asText]
		checkMerged: checkMergedBlock.