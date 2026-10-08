tests
testMergeBase: baseBlock
checkBase: checkBaseBlock
incoming: incomingBlock
current: currentBlock
checkDialog: checkDialogBlock
checkMerged: checkMergedBlock
	self
		do: baseBlock;
		commitWithMessage: 'base commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'merge-target');
		do: incomingBlock;
		commitWithMessage: 'incoming commit';
		rightClick: 'merge-target' asText;
		leftClick: 'Switch to it';
		leftClick: 'Load changes';
		do: checkBaseBlock;
		do: currentBlock;
		commitWithMessage: 'current commit';
		rightClick: 'main' asText;
		leftClick: 'Merge it into branch ''merge-target''';
		find: 'Changes to merge from main into merge-target';
		openDialogPath;
		do: checkDialogBlock;
		find: 'Merge main into merge-target';
		leftClick: 'Merge changes';
		do: checkMergedBlock;
		leftClick: 'merge-target' asText allBold;
		check: 'Merge main into merge-target' hasBalloon: 'Latest commit of merge-target*';
		check: 'current commit' hasBalloon: 'Commit *';
		check: 'incoming commit' hasBalloon: 'Latest commit of main*';
		check: 'base commit' hasBalloon: 'Commit *'.