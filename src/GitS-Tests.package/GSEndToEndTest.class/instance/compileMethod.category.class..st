data
compileMethod: sourceString category: categoryString class: aSymbol
	(Environment current classNamed: aSymbol)
		compile: sourceString classified: categoryString.