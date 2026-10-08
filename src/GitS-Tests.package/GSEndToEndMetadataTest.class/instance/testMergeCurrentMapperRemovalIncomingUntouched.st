tests
testMergeCurrentMapperRemovalIncomingUntouched
	self
		testMergeBase: [
			self
				trackPlaintextAt: #('assets' 'removed.txt');
				writePlaintext: 'hello' at: #('assets' 'removed.txt')]
		checkBase: []
		incoming: [self writePlaintext: 'incoming' at: #('assets' 'kept.txt')]
		current: [self removeAssetAt: #('assets' 'removed.txt')]
		checkDialog: [
			self
				find: 'kept.txt';
				findNo: 'Metadata']
		checkMerged: [
			self withAssetBrowser: [
				self
					toggleSubtree: 'assets';
					find: 'kept.txt';
					findNo: 'removed.txt']].