actions
actionEditPackagePath
	| mapper packageName |
	mapper := self selectedMapper.
	packageName := mapper package name.
	mapper path: (GSPathUtilities
						requestAbsolute:
							('The package will be stored in a subdirectory of the path below, named {1}.
							Thus, the package is currently stored in the directory {2}.' gitSFormat: {
								packageName printString.
								(GSPathUtilities asString: mapper packagePath) printString})
						initialAnswer: mapper path).