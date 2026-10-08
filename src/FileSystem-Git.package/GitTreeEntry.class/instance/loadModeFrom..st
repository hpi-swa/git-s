initialize-release
loadModeFrom: aStream
	| newMode |
	newMode := self readModeFrom: aStream.
	newMode = self class fileMode ifTrue: [ ^ self beInFileMode ].
	newMode = self class executableFileMode ifTrue: [ ^ self beInExecutableFileMode ].
	newMode = self class dirMode ifTrue: [ ^ self beInDirectoryMode ].
	newMode = self class submoduleMode ifTrue: [ ^ self beInSubmoduleMode ].
	newMode = self class symlinkMode ifTrue: [ ^ self beInSymlinkMode ].
	
	GitInvalidObjectError signal: 'This tree entry has an invalid filemode.'