rebase
testRebaseMergeUnsupported
	self
		testRebaseBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit'
		window: [
			self
				addRebaseCommandAfter: '* main commit' type: 'merge'
				supplyingAnswers: #(('Label:' 'somelabel'));
				do: [self leftClick: 'Run'] suppressingMessage: 'Merging during rebase is currently unsupported'].