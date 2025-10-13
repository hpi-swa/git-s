adding
addVersionChanges: aCollection
	self changes addAll: (aCollection collect: [:each |
		GSCodeChange withChangeSet: self versionChange: each]).