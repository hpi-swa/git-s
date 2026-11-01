asset-creation
loadAssetFileFromFSCommit: anFSCommit
	^ (self hexHashIn: anFSCommit)
		ifNil: [GSMissingAssetFile withMapper: self]
		ifNotNil: [:hexHash | | repository |
			repository := anFSCommit commit repository.
			(repository unitOfWork hasObject: hexHash) "anFSCommit might be an in-memory-only commit"
				ifTrue: [GSPresentAssetFile withMapper: self in: repository hexHash: hexHash]
				ifFalse: [self loadAssetFileFromFileSystem: anFSCommit filesystem]]