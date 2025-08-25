compiling
match: sourcesCollection of: aCommitListFilterModel using: matcherBlock
	sourcesCollection do: [:source |
		source stringsOf: aCommitListFilterModel do: [:each |
			(matcherBlock value: each) ifTrue: [^ true]]].
	^ false