git porcelain - external
externalCommandExitCodeReference
	| tempDirectory |
	tempDirectory := self osProcess isWindows ifTrue: [self osProcess thisOSProcess environment at: #TEMP] ifFalse: ['/tmp/'].
	^ (FileSystem disk referenceTo: tempDirectory) / 'git-s' / 'external-command-exit-code'