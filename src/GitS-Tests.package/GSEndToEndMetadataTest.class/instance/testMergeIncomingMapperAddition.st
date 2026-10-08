tests
testMergeIncomingMapperAddition
	self
		testMergeBase: []
		checkBase: []
		incoming: [
			self
				trackPlaintextAt: #('assets' 'added.txt');
				writePlaintext: 'hello' at: #('assets' 'added.txt')]
		current: [self writePlaintext: 'current' at: #('assets' 'kept.txt')]
		checkDialog: [
			self
				selectMapperChange: 'Plaintext at /assets/added.txt (tracked)';
				find: 'Addition on the incoming side of the Plaintext at /assets/added.txt (tracked)']
		checkMerged: [
			self
				checkPlaintext: 'current' at: #('assets' 'kept.txt');
				checkPlaintext: 'hello' at: #('assets' 'added.txt')].