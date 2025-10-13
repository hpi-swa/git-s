diffing
diffFromLines: aVersionChange
	^ self joinTexts: ((self diffChunksFromLines: aVersionChange) collect: [:each |
		"each is either (#common -> {...}) or (#different -> ({...} -> {...}))"
		each key caseOf: {
			[#common] -> [self asCommonText: (self joinStrings: each value)].
			[#different] -> [self joinTexts: (
				(each value key collect: [:line | self asRemovalText: line]),
				(each value value collect: [:line | self asAdditionText: line]))]}])