git porcelain - external
externalCommandExitCodePath
	| tempDirectory |
	tempDirectory := self osProcess isWindows ifTrue: ['\Windows\Temp\'] ifFalse: ['/tmp/'].
	^ tempDirectory, 'git-s-external-command-exit-code'