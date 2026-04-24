changes-creation
createImageCommit
	| fileSystem |
	fileSystem := self headFSCommit filesystem.
	self allMappers
		do: [:each | each serializeImage: self into: fileSystem]
		displayingProgress: [:each | 'Gathering current image version from {1}' format: {each}].
	^ fileSystem prepareNewCommit
		message: 'The current state of the image';
		parents: #();
		yourself