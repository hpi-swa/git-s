git porcelain - external
requestTerminalCommand
	| command |
	command := UIManager request:
		'No terminal emulator could be detected. ',
		'Please provide a command to spawn a terminal emulator. ',
		(Preferences pragmaPreferenceFor: GitFeatureFlags getter: #customTerminalCommandForExternalCommands) helpString.
	GitFeatureFlags customTerminalCommandForExternalCommands: command.
	^ command