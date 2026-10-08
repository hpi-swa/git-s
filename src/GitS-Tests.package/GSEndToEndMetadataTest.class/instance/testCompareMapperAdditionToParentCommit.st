tests
testCompareMapperAdditionToParentCommit
	self
		commitWithMessage: 'base commit';
		trackPlaintextAt: #('assets' 'added.txt');
		writePlaintext: 'hello' at: #('assets' 'added.txt');
		commitWithMessage: 'add mapper';
		rightClick: 'add mapper';
		moveTo: 'Compare';
		leftClick: 'it to its parent commit';
		find: 'Show changes from * base commit to * add mapper';
		openDialogPath;
		selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
		find: 'Addition on the incoming side of the Plaintext at /assets/added.txt (tracked)'.