initialize-release
initializeStores
	objectStores := OrderedCollection new: 2.
	objectStores add: (GitLooseObjectStore baseDir: self repository baseDir).
	(GitPackedObjectStore hasPacks: self repository) ifTrue:
		[objectStores add: (GitPackedObjectStore packsDir: self repository packsDir)].
	objectStores do: [:each | each repository: self repository].
	refStores := OrderedCollection new: 2.
	refStores add: (GitLooseRefStore baseDir: self repository baseDir).
	(GitPackedRefStore existsIn: self repository) ifTrue:
		[refStores add: (GitPackedRefStore on: self repository)].
	refStores do: [:each | each repository: self repository].