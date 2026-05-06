snapshot-creation
loadSnapshotFrom: aFilesystem fsCommits: aVersionChange
	| directory |
	directory := self packageDirectoryIn: aFilesystem.
	directory isDirectory ifFalse: [^ MCSnapshot empty].
	^ GSGUIUtilities suppressProgressDuring: [(self differOn: directory fsCommits: aVersionChange) version snapshot]