git porcelain - external
externalCommandExitCodeReference
	| tempDirectory |
	tempDirectory := self osProcess isWindows ifTrue: ['\Windows\Temp\'] ifFalse: ['/tmp/'].
	^ (FileSystem disk referenceTo: tempDirectory) / 'git-s' / 'external-command-exit-code'