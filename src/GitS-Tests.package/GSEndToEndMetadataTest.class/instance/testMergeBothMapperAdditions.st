tests
testMergeBothMapperAdditions
	self
		testMergeConflictBase: []
		checkBase: []
		incoming: [
			self
				trackPlaintextAt: #('assets' 'added.txt');
				writePlaintext: 'incoming' at: #('assets' 'added.txt')]
		current: [
			self
				trackPlaintextAt: #('assets' 'added.txt');
				writePlaintext: 'current' at: #('assets' 'added.txt')]
		type: 'both added'
		findInDialog: [
			self
				findNo: 'Metadata';
				leftClick: 'added.txt']
		resolve: [self leftClick: 'Resolve to current']
		checkMerged: [self checkPlaintext: 'current' at: #('assets' 'added.txt')].