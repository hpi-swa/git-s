accessing
writeBlob: hexHash at: aPath
	"on read, we want to cause a load from the repository"
	(cache referenceTo: aPath) ensureDeleted.
	"loading first loads the tree, so we need to update that now"
	(self copiedTreeForModificationAt: aPath parent) putEntry:
		(GitTreeEntry
			fileNamed: aPath basename
			hash: hexHash
			in: repository).
	pendingPathsForEntryUpdate add: aPath parent.