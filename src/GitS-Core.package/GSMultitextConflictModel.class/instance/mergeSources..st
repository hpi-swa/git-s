merging
mergeSources: aVersionMerge
	^ GSTextUtilities joinTexts: (Array streamContents: [:stream |
		aVersionMerge stringMergeChunks do: [:chunk |
			chunk key caseOf: {
				[#ok] -> [stream nextPutAll: chunk value].
				[#conflict] -> [	self conflictLines: chunk value on: stream]}]])