tests
testMergeBase: baseBlock
checkBase: checkBaseBlock
incoming: incomingBlock
current: currentBlock
checkDialog: checkDialogBlock
checkMerged: checkMergedBlock
	self setupCode.
	baseBlock value.
	self
		commitWithMessage: 'base commit';
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'merge-target').
	incomingBlock value.
	self
		commitWithMessage: 'incoming commit';
		rightClick: 'merge-target' asText;
		leftClick: 'Switch to it';
		leftClick: 'Load changes'.
	checkBaseBlock value.
	currentBlock value.
	self
		commitWithMessage: 'current commit';
		rightClick: 'main' asText;
		leftClick: 'Merge it into branch ''merge-target''';
		find: 'Changes to merge from main into merge-target';
		toggleSubtree: 'GitS-TestData';
		toggleSubtree: 'GSDummy'.
	checkDialogBlock value.
	self
		find: 'Merge main into merge-target';
		leftClick: 'Merge changes'.
	checkMergedBlock value.
	self
		leftClick: 'merge-target' asText allBold;
		find: '*[merge-target] Merge main into merge-target';
		find: '*current commit';
		find: '*[main] incoming commit';
		find: '*base commit'.