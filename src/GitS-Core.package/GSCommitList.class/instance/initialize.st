initialize-release
initialize
	super initialize.
	self
		commits: OrderedCollection new;
		basicBlock: self defaultBlock;
		basicExpression: '';
		patternMode: (self createMode: GSCommitListPatternMode);
		codeMode: (self createMode: GSCommitListCodeMode);
		activeMode: self patternMode;
		scope: (GSCommitListScope new
					commitList: self;
					addDependent: self;
					yourself).