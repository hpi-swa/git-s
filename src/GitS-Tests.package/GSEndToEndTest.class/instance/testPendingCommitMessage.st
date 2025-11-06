tests
testPendingCommitMessage
	self
		setupCode;
		leftClick: 'Commit';
		leftClick: 'message';
		type: 'remember';
		leftClick: 'Cancel';
		findNo: 'remember';
		leftClick: 'Commit';
		find: 'remember';
		findNo: 'message';
		leftClick: 'Commit changes';
		find: '* remember'.