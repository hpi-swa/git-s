accessing
hasButtons: aSymbol
	^ self buttons anySatisfy: [:each | each fourth = aSymbol]