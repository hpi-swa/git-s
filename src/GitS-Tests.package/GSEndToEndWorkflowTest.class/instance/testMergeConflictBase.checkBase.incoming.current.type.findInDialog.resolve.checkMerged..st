tests
testMergeConflictBase: baseBlock
checkBase: checkBaseBlock
incoming: incomingBlock
current: currentBlock
type: aString
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
				find: 'Conflict (' asText, aString asText, '; ', 'unresolved' asText allBold, ')' asText;
				do: resolveBlock;
				find: 'Conflict (' asText, aString asText, '; resolved)' asText]
		checkMerged: checkMergedBlock.