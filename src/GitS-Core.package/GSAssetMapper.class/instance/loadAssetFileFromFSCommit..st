asset-creation
loadAssetFileFromFSCommit: anFSCommit
	^ (self hexHashIn: anFSCommit)
		ifNil: [GSMissingAssetFile withMapper: self]
		ifNotNil: [:hexHash | GSPresentAssetFile
								withMapper: self
								in: anFSCommit commit repository
								hexHash: hexHash]