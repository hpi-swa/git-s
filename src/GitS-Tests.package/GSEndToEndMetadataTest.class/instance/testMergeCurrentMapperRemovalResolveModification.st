tests
testMergeCurrentMapperRemovalResolveModification
	self
		testMergeCurrentMapperRemovalResolve: [
			self
				leftClick: 'Resolve to incoming';
				find: '( Plaintext at /assets/removed.txt (tracked) )']
		checkMerged: [
			self
				checkPlaintext: 'initial' at: #('assets' 'kept.txt');
				checkPlaintext: 'changed' at: #('assets' 'removed.txt')].