actions
actionsForChangesAncestorTree: aChangesTree withChanges: aCollection
	| class |
	class := self classFromChangesTree: aChangesTree ifNone: [^ #()].
	^ {
		GSAction new
			label: 'browse';
			keyStroke: $b;
			runBlock: [class browse];
			yourself.
		GSAction new
			label: 'references';
			keyStroke: $N;
			runBlock: [self systemNavigation browseAllCallsOnClass: class];
			yourself.
	}