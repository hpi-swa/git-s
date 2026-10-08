tests
testMergeIncomingMapperRemoval
	self
		testMergeBase: [
			self
				trackPlaintextAt: #('assets' 'removed.txt');
				writePlaintext: 'hello' at: #('assets' 'removed.txt')]
		checkBase: []
		incoming: [self removeAssetAt: #('assets' 'removed.txt')]
		current: [self writePlaintext: 'current' at: #('assets' 'kept.txt')]
		checkDialog: [
			self
				selectMapperChange: 'Plaintext at /assets/removed.txt (tracked)';
				find: 'Removal on the incoming side of the Plaintext at /assets/removed.txt (tracked)']
		checkMerged: [
			self withAssetBrowser: [
				self
					toggleSubtree: 'assets';
					find: 'kept.txt';
					findNo: 'removed.txt']].