tests
testExcludeMapperAddition
	self
		commitWithMessage: 'base commit';
		trackPlaintextAt: #('assets' 'added.txt');
		writePlaintext: 'hello' at: #('assets' 'added.txt');
		trackPlaintextAt: #('assets' 'other.txt');
		commitWithMessage: 'add other' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
				rightClick: 'Plaintext at /assets/added.txt (tracked)';
				do: [self leftClick: 'exclude (x)']
				supplyingAnswer: #('Excluding this change will also exclude all changes to Plaintext at /assets/added.txt (tracked). Is that ok?' true);
				find: '( Plaintext at /assets/added.txt (tracked) )';
				find: '( added.txt )'];
		commitWithMessage: 'add mapper' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
				find: 'Addition on the incoming side of the Plaintext at /assets/added.txt (tracked)';
				find: 'added.txt'];
		check: 'add mapper' hasBalloon: 'Latest commit of main*'.