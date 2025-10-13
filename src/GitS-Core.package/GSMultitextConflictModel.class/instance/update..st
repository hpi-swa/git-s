updating
update: aSymbol
	super update: aSymbol.
	aSymbol = #resolution ifTrue: [self updateTexts].
	aSymbol = #isResolved ifTrue: [self changed: #headerText].