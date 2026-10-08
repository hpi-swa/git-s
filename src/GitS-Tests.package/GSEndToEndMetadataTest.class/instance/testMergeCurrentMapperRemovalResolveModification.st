tests
testMergeCurrentMapperRemovalResolveModification
	self
		testMergeCurrentMapperRemovalResolve: [
			self
				leftClick: 'Resolve to incoming';
				find: '( Plaintext at /assets/removed.txt (tracked) )']
		checkMerged: [
			self withAssetBrowser: [
				self
					toggleSubtree: 'assets';
					find: 'kept.txt';
					find: 'removed.txt']].