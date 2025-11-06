tests
testDeleteBranch
	self
		setupCode;
		commitWithMessage: 'test commit';
		rightClick: '*test commit';
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at * test commit. Branch name:' 'feature');
		rightClick: 'feature' asText;
		do: [self leftClick: 'Delete it']
		supplyingAnswer: #('Are you sure you want to delete the ref ''feature''?' true);
		findNo: 'feature';
		find: 'main' asText allBold.