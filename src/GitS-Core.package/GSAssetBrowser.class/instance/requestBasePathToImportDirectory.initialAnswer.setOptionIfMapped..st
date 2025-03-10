requests
requestBasePathToImportDirectory: aReference
initialAnswer: aPath
setOptionIfMapped: aBlock
	| basePath mappedPaths |
	basePath := GSPathUtilities
					requestAbsolute: 'Base path for assets in the repository:'
					initialAnswer: aPath.
	mappedPaths := ((aReference allFiles
						collect: [:each | basePath resolve: (each path relativeTo: aReference path)])
						reject: [:each | self activeWorkingCopy isUnmappedPath: each])
						collect: [:each | GSPathUtilities asString: each].
	mappedPaths ifNotEmpty: [
		 aBlock value: (GSGUIUtilities
			chooseOptionFromLabeledBlocks: {
				'Choose a different base path' -> [
					^ self
						requestBasePathToImportDirectory: aReference
						initialAnswer: basePath
						setOptionIfMapped: aBlock].
				'Skip taken paths' -> [#skip].
				'Overwrite taken paths (if possible)' -> [#overwrite].
				'Ask for each taken path' -> [#ask]}
			title: (('{1} paths' format: {mappedPaths size}) asText
						addAttribute: (PluggableTextAttribute evalBlock: [
										self inform: (mappedPaths joinSeparatedBy: String cr)]);
						yourself), ' inside the base path are already taken.'
			cancelLabel: 'Cancel')].
	^ basePath