tests
testMergeCurrentMapperRemovalResolveDeletion
	self
		testMergeCurrentMapperRemovalResolve: [
			self
				do: [self leftClick: 'Resolve to current']
				supplyingAnswer: #('In the project structure, the removal on the current side of the Plaintext at /assets/removed.txt (tracked) can now be included. Do you want to do that?' true);
				find: 'Plaintext at /assets/removed.txt (tracked)']
		checkMerged: [
			self withAssetBrowser: [
				self
					toggleSubtree: 'assets';
					find: 'kept.txt';
					findNo: 'removed.txt']].