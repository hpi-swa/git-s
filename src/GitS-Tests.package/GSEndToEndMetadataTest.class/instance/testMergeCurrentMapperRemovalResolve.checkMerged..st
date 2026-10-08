tests
testMergeCurrentMapperRemovalResolve: resolveBlock checkMerged: checkMergedBlock
	self
		testMergeConflictBase: [
			self
				trackPlaintextAt: #('assets' 'removed.txt');
				writePlaintext: 'hello' at: #('assets' 'removed.txt')]
		checkBase: []
		incoming: [self writePlaintext: 'changed' at: #('assets' 'removed.txt')]
		current: [self removeAssetAt: #('assets' 'removed.txt')]
		type: 'current deleted, incoming modified'
		findInDialog: [
			self
				toggleSubtree: '( Project Structure )';
				leftClick: '( Plaintext at /assets/removed.txt (tracked) )';
				find: 'Removal on the current side of the Plaintext at /assets/removed.txt (tracked)';
				leftClick: 'removed.txt']
		resolve: resolveBlock
		checkMerged: checkMergedBlock.