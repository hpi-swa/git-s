snapshot-creation
loadSnapshotFrom: aFilesystem
	| directory |
	directory := self packageDirectoryIn: aFilesystem.
	directory isDirectory ifFalse: [^ MCSnapshot empty].
	^ GSGUIUtilities suppressProgressDuring: [(self readerOn: directory) version snapshot]