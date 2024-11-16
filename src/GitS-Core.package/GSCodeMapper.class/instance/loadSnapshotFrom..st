snapshot-creation
loadSnapshotFrom: aFilesystem
	| directory |
	directory := self packageDirectoryIn: aFilesystem.
	directory isDirectory ifFalse: [^ MCSnapshot empty].
	^ (self readerOn: directory) version snapshot