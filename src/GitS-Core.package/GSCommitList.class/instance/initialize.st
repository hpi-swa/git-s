initialize-release
initialize
	super initialize.
	self
		commits: OrderedCollection new;
		activeCommitIndex: 0;
		basicBlock: self defaultBlock;
		expression: '';
		errors: OrderedCollection new;
		patternMode: (self createMode: GSCommitListPatternMode);
		codeMode: (self createMode: GSCommitListCodeMode);
		activeMode: self patternMode;
		scope: (GSCommitListScope new
					commitList: self;
					when: #changed send: #scopeChanged to: self;
					yourself).