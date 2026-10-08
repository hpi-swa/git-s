tests
testCommitMapperAddition
	self
		commitWithMessage: 'base commit';
		trackPlaintextAt: #('assets' 'added.txt');
		commitWithMessage: 'add mapper' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
				find: 'Addition on the incoming side of the Plaintext at /assets/added.txt (tracked)'];
		check: 'add mapper' hasBalloon: 'Latest commit of main*'.