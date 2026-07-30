rebase
addRebaseCommandAfter: commitLabel type: typeName supplyingAnswers: extraPairs
	self leftClick: (self findInRebaseWindow: commitLabel).
	self
		do: [self leftClick: 'Add']
		supplyingAnswers: {{'Choose the new command type:'. typeName}}, extraPairs.