git porcelain - external
suggestWSLGitInstallation
	(self osProcess isWindows and: [self commandExists: 'wsl']) ifFalse: [^ ''].
	^ 'If git is installed in WSL, you can also enter ''wsl git''.'