changes-creation
changesToMergeFSCommits: aVersionMerge in: aWorkingCopy
	| emptyFSCommit metadataForCommits commitsForMappers mapperChanges changedMappersForMissing metadataBuilder |
	emptyFSCommit := aWorkingCopy emptyFSCommit.
	metadataForCommits := self loadMetadatasWithUntrackedMappersFromFSCommits: aVersionMerge in: aWorkingCopy.
	commitsForMappers := Dictionary new.
	aVersionMerge versionsDictionary keysAndValuesDo: [:selector :commit |
		(metadataForCommits perform: selector) mappers do: [:mapper |
			(commitsForMappers at: mapper ifAbsentPut: [GSVersionMerge all: emptyFSCommit])
				perform: selector asSimpleSetter with: commit]].
	mapperChanges := Dictionary new.
	commitsForMappers associations
		do: [:mapperToCommits | | mapper mapperCommits |
			mapper := mapperToCommits key.
			mapperCommits := mapperToCommits value.
			mapperChanges
				at: mapper
				put: (mapper changesToMergeFSCommits: mapperCommits)]
		displayingProgress: [:mapperToCommits | 'Merging {1}' format: {mapperToCommits key}].
	changedMappersForMissing := [:missingVersions | commitsForMappers keys select: [:mapper | | commitsForMapper |
		commitsForMapper := commitsForMappers at: mapper.
		missingVersions asSet = (commitsForMapper versionsDictionary select: [:commit | commit = emptyFSCommit]) keys asSet]].
	metadataBuilder := GSMetadataBuilder newWithCurrentMetadata: metadataForCommits current mapperChanges: mapperChanges.
	^ OrderedCollection streamContents: [:stream |
		mapperChanges valuesDo: [:each | stream nextPutAll: each].
		stream nextPutAll: (self changesToMergeNames: (metadataForCommits collect: #name)).
		{
			GSMetadataMappersIncomingRemovalChange.
			changedMappersForMissing value: #(incoming).
			GSMetadataMappersIncomingAdditionChange.
			changedMappersForMissing value: #(current base).
			GSMetadataMappersCurrentRemovalChange.
			(changedMappersForMissing value: #(current)) reject: [:mapper |
				(mapperChanges at: mapper) isEmpty].
			"a 'current addition' change is unnecessary, since the incoming side cannot cause conflicts"
		} pairsDo: [:class :mappers |
			stream nextPutAll: (class
				changesFromMappers: mappers
				builder: metadataBuilder
				metadataMapper: self)]]