git porcelain - external
windowsTerminalCommand: aString
	^ 'cmd.exe /c start "git" cmd.exe /v:on /c "{1} & echo !ErrorLevel!> {2} & if not !ErrorLevel!==0 pause <CON"'
		format: {aString. self externalCommandExitCodePath}