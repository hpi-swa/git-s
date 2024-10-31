git porcelain - external
terminalCommand
	^ GitFeatureFlags customTerminalCommandForExternalCommands ifEmpty: [self detectTerminalCommand]