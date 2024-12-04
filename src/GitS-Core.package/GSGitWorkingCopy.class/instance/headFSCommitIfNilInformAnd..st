head
headFSCommitIfNilInformAnd: aBlock
	^ self fsCommitFrom: (self headCommitIfNilInformAnd: [^ aBlock value])