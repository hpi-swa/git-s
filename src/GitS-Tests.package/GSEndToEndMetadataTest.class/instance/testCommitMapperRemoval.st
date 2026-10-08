tests
testCommitMapperRemoval
	self
		trackPlaintextAt: #('assets' 'removed.txt');
		commitWithMessage: 'base commit';
		removeAssetAt: #('assets' 'removed.txt');
		commitWithMessage: 'remove mapper' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/removed.txt (tracked)';
				find: 'Removal on the incoming side of the Plaintext at /assets/removed.txt (tracked)'];
		check: 'remove mapper' hasBalloon: 'Latest commit of main*'.