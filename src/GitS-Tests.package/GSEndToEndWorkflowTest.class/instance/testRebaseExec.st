rebase
testRebaseExec
	Smalltalk globals removeKey: #GSRebaseExecMarker ifAbsent: [].
	self
		testRebaseBase: [self install: self version1A; commitWithMessage: 'base commit']
		main: [self install: self version2A; commitWithMessage: 'main commit']
		target: [self install: self version1B; commitWithMessage: 'target commit']
		onto: 'target commit'
		window: [
			self
				addRebaseCommandAfter: '* main commit' type: 'exec'
				supplyingAnswers: #(('Command:' 'Smalltalk at: #GSRebaseExecMarker put: true'));
				runRebaseToCompletion;
				leftClick: 'main' asText allBold;
				find: 'base commit';
				find: 'target commit';
				find: 'main commit'].
	self assert: (Smalltalk at: #GSRebaseExecMarker ifAbsent: [false]).
	Smalltalk globals removeKey: #GSRebaseExecMarker ifAbsent: [].