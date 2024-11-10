git porcelain - external
externalCommand: aString
	| osProcess |
	osProcess := self osProcess.
	UIManager default informUser: 'Running a git command in a terminal...' during: [
		osProcess waitForCommand:
			(osProcess isWindows
				ifTrue: ['cmd.exe /c "{1} & pause"' format: {aString}]
				ifFalse: [self terminalCommand: aString])].