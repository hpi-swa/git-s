compiling
findExpressionMorph
	^ self commitList actualDependents
		detect: [:each | (each isKindOf: PluggableTextMorph) and: [each getTextSelector = #expression]]
		ifNone: [nil]