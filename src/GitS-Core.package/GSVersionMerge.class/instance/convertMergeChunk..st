merging
convertMergeChunk: anAssociation
	^ anAssociation key caseOf: {
		[#ok] -> [anAssociation].
		[#conflict] -> [anAssociation key -> (self convertMergeChunkConflict: anAssociation value)].
	}