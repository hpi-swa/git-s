initialize-release
initialize
	super initialize.
	self
		commits: OrderedCollection new;
		basicBlock: self defaultBlock;
		basicExpression: '';
		modes: ({GSCommitListPatternMode. GSCommitListCodeMode} collect: [:each |
			each new
				commitList: self;
				addDependent: self;
				yourself]);
		activeMode: self modes first;
		scope: (GSCommitListScope new
					commitList: self;
					addDependent: self;
					yourself).