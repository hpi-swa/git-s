tests
testIncludeMapperRemovalWithExcludedContent
	self
		trackPlaintextAt: #('assets' 'removed.txt');
		installPlaintext: 'hello' at: #('assets' 'removed.txt');
		commitWithMessage: 'base commit';
		removeAssetAt: #('assets' 'removed.txt');
		trackPlaintextAt: #('assets' 'other.txt');
		commitWithMessage: 'add other' checking: [
			self
				openDialogPath;
				exclude: 'removed.txt';
				selectMapperChange: '( Plaintext at /assets/removed.txt (tracked) )';
				do: [self include: 'Plaintext at /assets/removed.txt (tracked)']
				suppressingMessage: 'This removal cannot be included yet, since some changes to the Plaintext at /assets/removed.txt (tracked) are either excluded or not yet resolved to be removals.';
				find: '( Plaintext at /assets/removed.txt (tracked) )';
				find: '( removed.txt )'];
		commitWithMessage: 'remove mapper' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/removed.txt (tracked)';
				find: 'Removal on the incoming side of the Plaintext at /assets/removed.txt (tracked)';
				find: 'removed.txt'];
		check: 'remove mapper' hasBalloon: 'Latest commit of main*'.