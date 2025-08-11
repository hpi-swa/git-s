tests
testPendingCommitMessage
	self
		newProject;
		declareClass: #GSDummy instVars: '';
		trackCode;
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