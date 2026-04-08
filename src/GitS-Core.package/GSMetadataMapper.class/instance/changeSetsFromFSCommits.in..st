changes-creation
changeSetsFromFSCommits: aChange in: aWorkingCopy
	| metadatas |
	metadatas := self
		loadMetadatasWithUntrackedMappersFromFSCommits: aChange
		in: aWorkingCopy.
	^ self
		changeSetsFromMetadatas: metadatas
		old: [:old :empty | old changeSetFromFSCommits: (aChange withIncoming: empty)]
		common: [:common | common changeSetFromFSCommits: aChange]
		new: [:new :empty | new changeSetFromFSCommits: (aChange withCurrent: empty)]
		in: aWorkingCopy