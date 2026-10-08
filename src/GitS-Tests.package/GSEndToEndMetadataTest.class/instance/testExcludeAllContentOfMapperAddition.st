tests
testExcludeAllContentOfMapperAddition
	self
		commitWithMessage: 'base commit';
		trackPlaintextAt: #('assets' 'added.txt');
		writePlaintext: 'hello' at: #('assets' 'added.txt');
		trackPlaintextAt: #('assets' 'other.txt');
		commitWithMessage: 'add other' checking: [
			self
				openDialogPath;
				rightClick: 'added.txt';
				do: [self leftClick: 'exclude (x)']
				supplyingAnswer: #('In the project structure, the addition on the incoming side of the Plaintext at /assets/added.txt (tracked) can now be excluded. Do you want to do that?' true);
				find: '( added.txt )';
				toggleSubtree: 'Project Structure';
				find: '( Plaintext at /assets/added.txt (tracked) )'];
		commitWithMessage: 'add mapper' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
				find: 'Addition on the incoming side of the Plaintext at /assets/added.txt (tracked)';
				find: 'added.txt'];
		check: 'add mapper' hasBalloon: 'Latest commit of main*'.