merging
convertMergeChunks: aCollection
	^ aCollection collect: [:each | self convertMergeChunk: each]