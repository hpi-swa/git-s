accessing
activeCommitHexHash
	^ (self activeEntry ifNil: [^ nil]) nextHexHash