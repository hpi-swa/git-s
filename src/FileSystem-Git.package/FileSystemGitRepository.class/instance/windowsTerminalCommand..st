git porcelain - external
windowsTerminalCommand: aString
	^ 'cmd.exe /v:on /c "{1} & set Code=!ErrorLevel!& pause & echo !Code!> {2}"'
		format: {aString. self externalCommandExitCodePath}