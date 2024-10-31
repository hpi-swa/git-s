git porcelain - external
detectTerminalCommand
	^ self knownTerminalCommands
		detect: [:each | self commandExists: each]
		ifNone: [self requestTerminalCommand]