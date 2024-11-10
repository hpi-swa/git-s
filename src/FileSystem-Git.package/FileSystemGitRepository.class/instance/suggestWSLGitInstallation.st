git porcelain - external
suggestWSLGitInstallation
	(OSProcess isWindows and: [self commandExists: 'wsl']) ifFalse: [^ ''].
	^ 'If git is installed in WSL, you can also enter ''wsl git''.'