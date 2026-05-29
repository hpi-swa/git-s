as yet unclassified
actions
	| allIncluded allExcluded |
	allIncluded := self allIncluded.
	allExcluded := self allExcluded.
	^ {
		GSAction new
			label: 'include all';
			keyStroke: (allExcluded ifTrue: [$x] ifFalse: [nil]);
			actionBlock: [self includeAll];
			isActive: allIncluded not.
		GSAction new
			label: 'exclude all';
			keyStroke: $x;
			actionBlock: [self excludeAll];
			isActive: allExcluded not.
		GSAction new
			label: 'toggle excluded';
			keyStroke: nil;
			actionBlock: [self toggleExcludedIndividual].
	}
	