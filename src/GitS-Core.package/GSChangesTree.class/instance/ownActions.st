actions
ownActions
	| allIncluded allExcluded |
	allIncluded := self allIncluded.
	allExcluded := self allExcluded.
	^ {
		GSAction new
			label: 'include all';
			keyStroke: (allExcluded ifTrue: [$x] ifFalse: [nil]);
			runBlock: [self includeAll];
			isActive: allIncluded not;
			yourself.
		GSAction new
			label: 'exclude all';
			keyStroke: $x;
			runBlock: [self excludeAll];
			isActive: allExcluded not;
			yourself.
		GSAction new
			label: 'toggle excluded';
			keyStroke: nil;
			runBlock: [self toggleExcludedIndividual];
			yourself.
		GSAction new
			label: 'inspect';
			keyStroke: $i;
			runBlock: [self inspect];
			yourself.
		GSAction new
			label: 'explore';
			keyStroke: $I;
			runBlock: [self explore];
			yourself.
	}
	