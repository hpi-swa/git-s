tests
testMergeCurrentMapperAddition
	self
		testMergeBase: []
		checkBase: []
		incoming: [self writePlaintext: 'incoming' at: #('assets' 'kept.txt')]
		current: [
			self
				trackPlaintextAt: #('assets' 'added.txt');
				writePlaintext: 'hello' at: #('assets' 'added.txt')]
		checkDialog: [
			self
				find: 'kept.txt';
				findNo: 'Metadata']
		checkMerged: [
			self
				checkPlaintext: 'incoming' at: #('assets' 'kept.txt');
				checkPlaintext: 'hello' at: #('assets' 'added.txt')].