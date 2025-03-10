importing
importDirectory: aReference
	| optionIfMapped basePath |
	optionIfMapped := #ask.
	basePath := self
		requestBasePathToImportDirectory: aReference
		initialAnswer: (self initialPathRequestAnswerWithSuffix: nil)
		setOptionIfMapped: [:option | optionIfMapped := option].
	aReference allFiles do: [:each |
		self importFile: each getPath: [| relativePath |
			relativePath := each path relativeTo: aReference path.
			self activeWorkingCopy
				getUnmappedPathFrom: (basePath resolve: relativePath)
				withTitle: ('Path in the respository for the imported asset {1}:' format: {relativePath})
				additionalOptions: {'Skip this file' -> [#skip]}
				optionIfMapped: [optionIfMapped]]].