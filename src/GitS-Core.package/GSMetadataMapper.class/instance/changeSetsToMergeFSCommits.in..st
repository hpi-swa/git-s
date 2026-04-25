changes-creation
changeSetsToMergeFSCommits: aVersionMerge in: aWorkingCopy
	| emptyFSCommit metadataForCommits commitsForMappers mapperChangeSets changedMappersFor mappersChangeSet metadataChangeSet |
	emptyFSCommit := aWorkingCopy emptyFSCommit.
	metadataForCommits := self loadMetadatasWithUntrackedMappersFromFSCommits: aVersionMerge in: aWorkingCopy.
	commitsForMappers := Dictionary new.
	aVersionMerge versionsDictionary keysAndValuesDo: [:selector :commit |
		(metadataForCommits perform: selector) mappers do: [:mapper |
			(commitsForMappers at: mapper ifAbsentPut: [GSVersionMerge all: emptyFSCommit])
				perform: selector asSimpleSetter with: commit]].
	mapperChangeSets := Dictionary new.
	commitsForMappers associations
		do: [:mapperToCommits | | mapper mapperCommits |
			mapper := mapperToCommits key.
			mapperCommits := mapperToCommits value.
			mapperChangeSets
				at: mapper
				put: (mapper changeSetToMergeFSCommits: mapperCommits)]
		displayingProgress: [:mapperToCommits | 'Merging {1}' format: {mapperToCommits key}].
	changedMappersFor := [:missingVersions | commitsForMappers keys select: [:mapper | | commitsForMapper |
		commitsForMapper := commitsForMappers at: mapper.
		missingVersions asSet = (commitsForMapper versionsDictionary select: [:commit | commit = emptyFSCommit]) keys asSet]].
	mappersChangeSet := GSMetadataMappersChangeSet new
		currentMappers: metadataForCommits current mappers;
		mapperChangeSets: mapperChangeSets;
		addChangedMappers: (changedMappersFor value: #(incoming))
		class: GSMetadataMappersIncomingRemovalChange;
		addChangedMappers: (changedMappersFor value: #(current base))
		class: GSMetadataMappersIncomingAdditionChange;
		addChangedMappers: ((changedMappersFor value: #(current)) select: [:mapper |
			(mapperChangeSets at: mapper) isEmpty not])
		class: GSMetadataMappersCurrentRemovalChange;
		"a 'current addition' change is unnecessary, since the incoming side cannot cause conflicts"
		yourself.
	metadataChangeSet := self
		changeSetToMergeMetadatas: metadataForCommits
		mappersChangeSet: mappersChangeSet.
	^ mapperChangeSets values copyWith: metadataChangeSet