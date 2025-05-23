changes-creation
changeSetsToMergeFSCommit: rightFSCommit into: leftFSCommit withBase: baseFSCommit in: aWorkingCopy
	| emptyCommit commits metadataForCommits commitsForMappers potentiallyRemovedMappers mapperChangeSets mappersChangeSet metadataChangeSet |
	emptyCommit := aWorkingCopy emptyCommit.
	commits := {rightFSCommit. leftFSCommit. baseFSCommit}.
	metadataForCommits := self loadMetadatasWithUntrackedMappersFromFSCommits: commits in: aWorkingCopy.
	commitsForMappers := Dictionary new.
	commits withIndexDo: [:commit :index |
		(metadataForCommits at: index) mappers do: [:mapper |
			(commitsForMappers at: mapper ifAbsentPut: [{emptyCommit. emptyCommit. emptyCommit}])
				at: index put: commit]].
	potentiallyRemovedMappers := commitsForMappers keys select: [:mapper | | commitsForMapper |
		commitsForMapper := commitsForMappers at: mapper.
		commitsForMapper first = emptyCommit or: [commitsForMapper second = emptyCommit]].
	mapperChangeSets := Dictionary new.
	commitsForMappers associations
		do: [:mapperToCommits | | mapper mapperCommits |
			mapper := mapperToCommits key.
			mapperCommits := mapperToCommits value.
			mapperChangeSets
				at: mapper
				put: (mapper
						changeSetToMergeFSCommit: mapperCommits first
						into: mapperCommits second
						withBase: mapperCommits third)]
		displayingProgress: [:mapperToCommits | 'Merging {1}' format: {mapperToCommits key}].
	mappersChangeSet := self
		changeSetFromMappers: metadataForCommits second mappers
		removing: potentiallyRemovedMappers
		changeSets: mapperChangeSets.
	metadataChangeSet := self
		changeSetToMergeMetadata: metadataForCommits first
		into: metadataForCommits second
		withBase: metadataForCommits third
		mappersChangeSet: mappersChangeSet.
	^ mapperChangeSets values copyWith: metadataChangeSet