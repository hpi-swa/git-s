as yet unclassified
actions
	| allIncluded allExcluded |
	allIncluded := self allIncluded.
	allExcluded := self allExcluded.
	^ {
		GSAction new
			label: 'include all';
			keyStroke: (allExcluded ifTrue: [$x] ifFalse: [nil]);
			runBlock: [self includeAll];
			isActive: allIncluded not.
		GSAction new
			label: 'exclude all';
			keyStroke: $x;
			runBlock: [self excludeAll];
			isActive: allExcluded not.
		GSAction new
			label: 'toggle excluded';
			keyStroke: nil;
			runBlock: [self toggleExcludedIndividual].
	}
	