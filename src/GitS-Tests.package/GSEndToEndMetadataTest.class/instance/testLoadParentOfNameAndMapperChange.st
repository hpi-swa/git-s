tests
testLoadParentOfNameAndMapperChange
	self
		commitWithMessage: 'base commit';
		renameProjectTo: 'Renamed';
		trackPlaintextAt: #('assets' 'added.txt');
		installPlaintext: 'hello' at: #('assets' 'added.txt');
		commitWithMessage: 'rename and add mapper';
		rightClick: 'base commit';
		leftClick: 'Load it';
		find: 'Load commit * base commit';
		openDialogPath;
		selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
		find: 'Removal on the incoming side of the Plaintext at /assets/added.txt (tracked)';
		leftClick: 'Load changes';
		findNo: self projectName;
		projectName: 'Test';
		find: self projectName;
		checkPlaintext: 'initial' at: #('assets' 'kept.txt');
		checkNoAsset: 'added.txt' at: #('assets').