migrations
lazyLoadAssetFilesFromHeadCommit
	<postLoadMigration: 16>
	GSGitWorkingCopy allSubInstancesDo: [:workingCopy |
		workingCopy headFSCommit ifNotNil: [:head |
			workingCopy unmappedReferencesIn: head do: [:each | | mapper |
				mapper := workingCopy metadataMapper untrackedMapperForReference: each.
				mapper materialize: (mapper loadAssetFileFromFSCommit: head) in: workingCopy]]].