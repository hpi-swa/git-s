tests
testLoadParentOfMapperAddition
	self
		commitWithMessage: 'base commit';
		trackPlaintextAt: #('assets' 'added.txt');
		writePlaintext: 'hello' at: #('assets' 'added.txt');
		commitWithMessage: 'add mapper';
		rightClick: 'base commit';
		leftClick: 'Load it';
		find: 'Load commit * base commit';
		openDialogPath;
		selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
		find: 'Removal on the incoming side of the Plaintext at /assets/added.txt (tracked)';
		leftClick: 'Load changes';
		withAssetBrowser: [
			self
				toggleSubtree: 'assets';
				find: 'kept.txt';
				findNo: 'added.txt'].