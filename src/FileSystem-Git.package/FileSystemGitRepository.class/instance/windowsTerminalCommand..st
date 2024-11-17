git porcelain - external
windowsTerminalCommand: aString
	^ 'cmd.exe /v:on /c "{1} & echo !ErrorLevel!> {2} & pause"'
		format: {aString. self externalCommandExitCodePath}