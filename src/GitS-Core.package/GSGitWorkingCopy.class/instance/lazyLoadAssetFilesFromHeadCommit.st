migrations
lazyLoadAssetFilesFromHeadCommit
	| head |
	head := self headFSCommit ifNil: [^ self].
	self unmappedReferencesIn: head do: [:each | | mapper |
		mapper := self metadataMapper untrackedMapperForReference: each.
		mapper materialize: (mapper loadAssetFileFromFSCommit: head) in: self].