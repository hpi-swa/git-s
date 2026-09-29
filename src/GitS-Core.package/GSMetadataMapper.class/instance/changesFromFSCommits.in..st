changes-creation
changesFromFSCommits: aVersionChange in: aWorkingCopy
	| metadatas |
	metadatas := self
		loadMetadatasWithUntrackedMappersFromFSCommits: aVersionChange
		in: aWorkingCopy.
	^ self
		changesFromMetadatas: metadatas
		old: [:old :empty | old changesFromFSCommits: (aVersionChange withIncoming: empty)]
		common: [:common | common changesFromFSCommits: aVersionChange]
		new: [:new :empty | new changesFromFSCommits: (aVersionChange withCurrent: empty)]
		in: aWorkingCopy