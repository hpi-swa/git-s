git porcelain - external
externalCommand: aString
	| osProcess exitCodeReference exitCode errorMessage |
	osProcess := self osProcess.
	exitCodeReference := self externalCommandExitCodeReference.
	exitCodeReference parent ensureDirectory.
	exitCodeReference ensureDeleted.
	UIManager default informUser: 'Running a git command in a terminal...' during: [
		osProcess command:
			(osProcess isWindows
				ifTrue: [self windowsTerminalCommand: aString]
				ifFalse: [self terminalCommand: aString])
				squeakToUtf8.
		[exitCodeReference exists] whileFalse: [0.1 seconds wait]].
	exitCode := exitCodeReference contents asString withBlanksTrimmed asNumber.
	exitCode = 0 ifTrue: [^ self].
	errorMessage := 'An external git command failed.'.
	(self confirm:
		('{1} Please check its output before closing the terminal.
		Do you want to run it again?'
			withoutLineEndings withBlanksCondensed
			format: {errorMessage}))
		ifFalse: [self error: errorMessage]
		ifTrue: [self externalCommand: aString].