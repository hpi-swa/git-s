changes-creation
changeSetsToMergeFSCommit: rightFSCommit into: leftFSCommit withBase: baseFSCommit in: aWorkingCopy
	| emptyCommit commits metadataForCommits commitsForMappers mapperChangeSets changedMappersFor mappersChangeSet metadataChangeSet |
	emptyCommit := aWorkingCopy emptyCommit.
	commits := {rightFSCommit. leftFSCommit. baseFSCommit}.
	metadataForCommits := self loadMetadatasWithUntrackedMappersFromFSCommits: commits in: aWorkingCopy.
	commitsForMappers := Dictionary new.
	commits withIndexDo: [:commit :index |
		(metadataForCommits at: index) mappers do: [:mapper |
			(commitsForMappers at: mapper ifAbsentPut: [{emptyCommit. emptyCommit. emptyCommit}])
				at: index put: commit]].
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
	changedMappersFor := [:missingIndices | commitsForMappers keys select: [:mapper | | commitsForMapper |
		commitsForMapper := commitsForMappers at: mapper.
		missingIndices = ((1 to: commitsForMapper size) select: [:index | (commitsForMapper at: index) = emptyCommit])]].
	mappersChangeSet := GSMetadataMappersChangeSet new
		oldMappers: metadataForCommits second mappers;
		mapperChangeSets: mapperChangeSets;
		addChangedMappers: (changedMappersFor value: #(1))
		class: GSMetadataMappersIncomingRemovalChange;
		addChangedMappers: (changedMappersFor value: #(2 3))
		class: GSMetadataMappersIncomingAdditionChange;
		addChangedMappers: ((changedMappersFor value: #(2)) select: [:mapper | | changeSet |
			changeSet := mapperChangeSets at: mapper.
			changeSet hasConflicts ifFalse: [self assert: changeSet isEmpty].
			changeSet hasConflicts])
		class: GSMetadataMappersCurrentRemovalChange;
		"a 'current addition' change is unnecessary, since the incoming side cannot cause conflicts"
		yourself.
	metadataChangeSet := self
		changeSetToMergeMetadata: metadataForCommits first
		into: metadataForCommits second
		withBase: metadataForCommits third
		mappersChangeSet: mappersChangeSet.
	^ mapperChangeSets values copyWith: metadataChangeSet