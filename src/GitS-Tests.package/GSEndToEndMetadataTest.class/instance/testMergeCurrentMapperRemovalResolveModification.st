tests
testMergeCurrentMapperRemovalResolveModification
	self
		testMergeCurrentMapperRemovalResolve: [
			self
				leftClick: 'Resolve to incoming';
				find: '( Plaintext at /assets/removed.txt (tracked) )']
		checkMerged: [
			self
				checkAsset: 'kept.txt' existsAt: #('assets');
				checkPlaintext: 'changed' at: #('assets' 'removed.txt')].