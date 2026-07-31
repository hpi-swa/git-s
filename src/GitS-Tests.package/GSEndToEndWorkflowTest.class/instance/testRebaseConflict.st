rebase
testRebaseConflict
	self
		startRebaseWithBase: [self commitWithMessage: 'base commit']
		main: [self install: self version1B; commitWithMessage: 'main commit']
		target: [self install: self version1A; commitWithMessage: 'target commit']
		onto: 'target commit';
		leftClick: 'Run';
		openDialogPath;
		do: [self leftClick: 'Commit changes'] suppressingMessage: 'There are conflicts. Please resolve them first. Aborting.';
		findInDialog: self conflict1AddAAddB;
		find: 'Conflict (' asText, 'unresolved' asText allBold, ')' asText;
		resolveToIncoming;
		find: 'Conflict (resolved)' asText;
		do: [self leftClick: 'Commit changes'] suppressingMessage: 'Rebase complete.';
		leftClick: 'main' asText allBold;
		find: 'base commit';
		find: 'target commit';
		find: 'main commit';
		check: self version1B.